# Networking & API Integration

The app uses **two HTTP clients** to talk to [SpiceLedger-Backend](../SpiceLedger-Backend):

| Client | Package | Base URL | Used for |
|--------|---------|----------|----------|
| **Dio** | `dio` | `ApiConfig.baseUrl` (gateway `:8080`) | Auth, accounts, merchant details |
| **GraphQL** | `graphql_flutter` | `ApiConfig.graphQLClient` (`:8080/graphql`) | Admin dashboard, products, grades, daily prices |

REST paths are prefixed with `/rest/...` on the Dio client because `baseUrl` is the gateway root.

---

## Response envelope

Both backends return the same JSON shape (see backend [MIDDLEWARE_AND_UTIL.md](../SpiceLedger-Backend/docs/MIDDLEWARE_AND_UTIL.md)):

```json
{
  "success": true,
  "message": "optional",
  "data": { }
}
```

REST parsing uses [`ApiResponse<T>`](../lib/core/network/models/api_response.dart) in data sources.

GraphQL HTTP responses are also wrapped: the GraphQL operation result lives under the top-level `data` field (e.g. `data.products`). The `graphql_flutter` client reads this as `QueryResult.data`.

On GraphQL errors the backend returns:

```json
{
  "success": false,
  "message": "token is expired",
  "data": null
}
```

Admin GraphQL data sources check `result.hasException` and `result.data?['fieldName']`. Rebuild the backend gateway after API changes (`make up-full-build`).

---

## Dio setup

[`NetworkModule`](../lib/core/network/network_module.dart):

- `baseUrl`: `ApiConfig.baseUrl`
- Timeout: `ApiConfig.restApiTimeout` (default 30s)
- Interceptors: `TokenInterceptor`, `LogInterceptor`

### TokenInterceptor ([`token_interceptor.dart`](../lib/core/network/token_interceptor.dart))

**On request:** attaches `Authorization: Bearer <access_token>` from secure storage.

**On 401:**

1. POST `/rest/accounts/refresh` with Basic auth + `{ refresh_token, device_id: "dev_987" }`
2. On success — save new tokens, retry original request
3. On failure — clear storage, navigate to `SplashScreen`

---

## GraphQL setup

[`GraphQLModule`](../lib/core/network/graphql_module.dart):

```
Link chain: GraphQLErrorLink → AuthLink → HttpLink
```

| Link | Role |
|------|------|
| **GraphQLErrorLink** | Detects auth errors in response/errors; refreshes token via REST; retries request |
| **AuthLink** | Injects `Bearer` token from secure storage |
| **HttpLink** | POST to `ApiConfig.graphQLClient` |

Refresh logic duplicates `TokenInterceptor` (same `/rest/accounts/refresh` endpoint) with synchronized refresh to avoid races.

---

## Authentication flows

### Login (REST)

```
POST {BASE_URL}/rest/accounts/login
Headers: Basic auth (from dart-define)
Body: { email, password, device_id: "dev_987" }

Response data: { account, access_token, refresh_token }
→ stored in EncryptedStorage
```

### Register (REST)

```
POST {BASE_URL}/rest/accounts
Headers: Basic auth (new user only)
Body: { id, name, email, password, user_type: "merchant" }
```

### Check email (REST)

```
GET {BASE_URL}/rest/accounts/check-email?email=<email>
Headers: Basic auth
```

Query param required — not JSON body.

### Logout (REST)

```
POST {BASE_URL}/rest/accounts/logout
Body: { device_id: "dev_987" }
Headers: Bearer (via interceptor)
→ clears secure storage
```

---

## REST endpoint map (implemented in app)

| Feature | Method | Path | Auth | Data source |
|---------|--------|------|------|-------------|
| Login | POST | `/rest/accounts/login` | Basic | `AuthRemoteDataSource` |
| Register | POST | `/rest/accounts` | Basic (new) / Bearer (update) | `AuthRemoteDataSource` |
| Check email | GET | `/rest/accounts/check-email` | Basic | `AuthRemoteDataSource` |
| Profile | GET | `/rest/accounts/info` | Bearer | `AuthRemoteDataSource` |
| Logout | POST | `/rest/accounts/logout` | Bearer | `AuthRemoteDataSource` |
| Merchant details get | GET | `/rest/accounts/merchant-info` | Bearer | `MerchantRemoteDataSource` |
| Merchant details save | POST | `/rest/accounts/merchant-info` | Bearer | `MerchantRemoteDataSource` |
| List products (fallback) | GET | `/rest/products/` | Bearer | `AdminProductRemoteDataSource.getProductsRest` |

---

## GraphQL operation map (implemented in app)

| UI feature | Operation | Type | GraphQL field | gRPC (backend) |
|------------|-----------|------|---------------|----------------|
| Admin products list | `GetProducts` | Query | `products(date, search)` | `ControlService.GetProductsWithGradesAndPrices` |
| Admin dashboard | `GetAdminDashboard` | Query | `adminDashboard` | `GetSystemMetrics` + `GetMarketMetrics` + `ListTransactions` |
| Add product | `CreateProduct` | Mutation | `createProduct(input)` | `CreateOrUpdateProduct` |
| Add grade | `CreateGrade` | Mutation | `createGrade(input)` | `CreateOrUpdateGrade` |
| Set grade prices | `CreateDailyPrice` | Mutation | `createDailyPrice(input)` | `CreateOrUpdateDailyPrice` |

Full GraphQL ↔ gRPC reference: [SpiceLedger-Backend/docs/GRAPHQL_API.md](../SpiceLedger-Backend/docs/GRAPHQL_API.md).

### Example: products query (admin)

**Request variables:** `{ "date": "2026-06-16", "search": "" }`

**Parsed result:** `result.data['products']` → list of `ProductModel` with nested `grades` and `price`.

### Example: create daily price (set grade price screen)

**Mutation input** (per grade):

```json
{
  "id": "",
  "productId": "<product_id>",
  "gradeId": "<grade_id>",
  "price": 125.5,
  "date": "2026-06-16",
  "time": "10:00:00"
}
```

Sent once per grade in `SetGradePriceCubit.savePrices()`.

---

## Error handling

[`ErrorHandler`](../lib/core/network/error_handler.dart) maps `DioException` to typed `Failure`:

| HTTP status | Failure type |
|-------------|--------------|
| 400 | `ValidationFailure` |
| 401 | `UnauthorizedFailure` |
| 403 | `ForbiddenFailure` |
| 404 | `NotFoundFailure` |
| 409 | `ConflictFailure` |
| 500 | `InternalServerFailure` |
| 503 | `ServiceUnavailableFailure` |
| Timeout / connection | `NetworkFailure` |

Message is extracted from `response.data['message']` (REST envelope).

GraphQL admin errors are currently surfaced as `ServerFailure(e.toString())` from generic `Exception` in repository — less structured than REST.

---

## Not yet integrated (backend available)

These backend GraphQL operations exist but have **no mobile data source yet**:

| Operation | Intended merchant UI |
|-----------|---------------------|
| `getGradePosition` | Inventory / positions |
| `getPositions` | Dashboard |
| `listGradeTransactions` | Transactions |
| `listTransactions` | Transactions |
| `buy` / `sell` | Trading actions |

---

## Security notes

- Tokens stored in **flutter_secure_storage** (Keychain / EncryptedSharedPreferences).
- Basic auth credentials compiled via dart-define — suitable for dev; use CI secrets for production builds.
- `device_id` is hardcoded (`dev_987`) — replace with a generated device UUID for production.

---

## Related docs

- [FEATURES.md](./FEATURES.md) — which screens call which APIs
- [ARCHITECTURE.md](./ARCHITECTURE.md) — repository / use case layer
- [SpiceLedger-Backend docs](../SpiceLedger-Backend/docs/)
