# SpiceLedger Mobile

Flutter client for SpiceLedger — admin catalog management and merchant trading. Connects to [SpiceLedger-Backend](../SpiceLedger-Backend) via REST (proxy) and GraphQL.

## Stack

| Layer | Technology |
|-------|------------|
| UI | Flutter (Material 3), IBM Plex Sans |
| State | `flutter_bloc` (Bloc + Cubit), `freezed` |
| DI | `get_it` + `injectable` |
| REST | `dio` |
| GraphQL | `graphql_flutter` |
| Secure storage | `flutter_secure_storage` (tokens) |
| Cache | `hive_ce` (onboarding flag) |
| Errors | `dartz` `Either<Failure, T>` |

## User roles

| Role | Entry after login | Status |
|------|-------------------|--------|
| **Admin** | Dashboard, Products, Ads tabs | Dashboard + products wired to API |
| **Merchant** | Dashboard, Inventory, Transactions tabs | Auth + merchant details wired; trading screens are placeholders |

## Quick start

### Prerequisites

- Flutter SDK `^3.10.1` (see `pubspec.yaml`)
- [SpiceLedger-Backend](../SpiceLedger-Backend) running (`make up-full-build`)
- Android emulator, iOS simulator, or device

### Configure environment

```bash
cp .env.example .env
```

Edit `.env` for your target:

| Target | `BASE_URL` | `GRAPHQL_CLIENT` |
|--------|------------|------------------|
| Android emulator | `http://10.0.2.2:8080` | `http://10.0.2.2:8081/graphql` |
| iOS simulator | `http://127.0.0.1:8080` | `http://127.0.0.1:8081/graphql` |
| Physical device | `http://<your-lan-ip>:8080` | `http://<your-lan-ip>:8081/graphql` |

### Run

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs   # first time / after model changes
flutter run --dart-define-from-file=.env --dart-define=ENVIRONMENT=development
```

Or use VS Code: **Run and Debug → SpiceLedger-Mobile (Dev)** (reads `.env` from `launch.json`).

### Seed logins (from backend migrations)

| Role | Email | Password |
|------|-------|----------|
| Admin | `admin@spice.com` | `secret123` |
| Merchant | `merchant@spice.com` | `secret123` |

---

## Documentation

| Topic | Document |
|-------|----------|
| Architecture & folder layout | [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) |
| Setup, env, code generation | [docs/SETUP.md](docs/SETUP.md) |
| Networking, APIs, auth | [docs/NETWORKING.md](docs/NETWORKING.md) |
| Screens & feature status | [docs/FEATURES.md](docs/FEATURES.md) |
| Backend API | [../SpiceLedger-Backend/README.md](../SpiceLedger-Backend/README.md) |
| Bruno API collection | [../SpiceLedger-API](../SpiceLedger-API/) |

---

## Project layout

```
lib/
├── main.dart                 # App entry, Hive + DI init
├── core/
│   ├── config/               # ApiConfig, EnvironmentConfig (dart-define)
│   ├── di/                   # injectable / get_it
│   ├── network/              # Dio, GraphQL, interceptors, ApiResponse
│   ├── storage/              # EncryptedStorage, Hive cache box
│   ├── theme/                # AppTheme, buttons, snackbars
│   ├── widgets/              # Shared UI (shimmer, dropdown)
│   └── error/                # Failure types
└── features/
    ├── onboarding/           # Splash, first-run onboarding
    ├── auth/                 # Check email, login, register, profile
    ├── admin/                # Dashboard, products, grades, daily prices
    └── merchant/             # Shell + merchant details (trading TBD)
```

---

## Code generation

After changing `@freezed`, `@JsonSerializable`, or `@injectable` classes:

```bash
dart run build_runner build --delete-conflicting-outputs
```

---

## App flow (summary)

```
Splash → Onboarding (first run) → Check Email → Login / Register
       → AdminBucketView  (admin JWT)
       → MerchantBucketView (merchant JWT)
```

Navigation is imperative (`Navigator.push` / `pushReplacement`) — no `go_router` yet.

---

## Development notes

- REST calls use **proxy** (`BASE_URL` + `/rest/...` paths).
- GraphQL calls hit the **graphql service directly** (`GRAPHQL_CLIENT`), not `/graphql` on the proxy.
- Device ID is hardcoded as `dev_987` for login, refresh, and logout.
- Backend must return `{ success, message, data }` for REST; GraphQL uses the same envelope on the HTTP layer (see [NETWORKING.md](docs/NETWORKING.md)).
