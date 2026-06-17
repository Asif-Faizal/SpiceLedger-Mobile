# Features & Screens

Feature implementation status as of the current codebase. **Wired** = calls backend API. **Placeholder** = UI shell only.

---

## Onboarding

| Screen | Path | Status | Notes |
|--------|------|--------|-------|
| Splash | `onboarding/presentation/pages/splash_screen.dart` | Wired | 3s animation; `SplashCubit` checks Hive + tokens |
| Onboarding | `onboarding/presentation/pages/onboarding_page.dart` | Wired | First run only; sets `has_seen_onboarding` in Hive |

### Splash routing

| Condition | Destination |
|-----------|-------------|
| First launch | `OnboardingPage` |
| Token + `user_type=admin` | `AdminBucketView` |
| Token + `user_type=merchant` | `MerchantBucketView` |
| No token | `CheckEmailPage` |

---

## Auth (`features/auth/`)

| Screen | Status | API |
|--------|--------|-----|
| Check email | Wired | `GET /rest/accounts/check-email?email=` |
| Login | Wired | `POST /rest/accounts/login` |
| Register | Wired | `POST /rest/accounts` (merchant) |
| Profile (admin/merchant) | Wired | `GET /rest/accounts/info`, logout |

### Auth flow

```
CheckEmailPage
  ├─ email exists    → LoginPage → AdminBucketView | MerchantBucketView
  └─ email new       → RegisterPage → (merchant account created)
```

### State classes

| Component | Type |
|-----------|------|
| `SplashCubit` | Cubit |
| `CheckEmailCubit` | Cubit |
| `LoginBloc` | Bloc |
| `RegisterBloc` | Bloc |
| `ProfileBloc` | Bloc |
| `LoginFormCubit` / `RegisterFormCubit` | Form validation cubits |

### Use cases

- `LoginUseCase`, `RegisterUseCase`, `CheckEmailUseCase`, `GetProfileUseCase`, `LogoutUseCase`

---

## Admin (`features/admin/`)

Shell: **`AdminBucketView`** — bottom nav with 3 tabs.

| Tab | Screen | Status | API |
|-----|--------|--------|-----|
| Dashboard | `AdminDashboardPage` | Wired | GraphQL `adminDashboard` |
| Products | `AdminProductsPage` | Wired | GraphQL `products` |
| Ads | `AdminAdsPage` | Placeholder | — |

### Admin dashboard (wired)

Displays from `AdminDashboardBloc`:

- Total users, products, transactions, volume (stat cards)
- Recent transactions list
- Top products by volume

### Admin products (wired)

`AdminProductsBloc` drives the products tab:

- Fetch products with **date** (defaults to today) and **search** (debounced 750ms)
- Product cards with grades and prices for selected date
- App bar **+** menu: Add Product, Add Grade dialogs

| Action | UI | API |
|--------|-----|-----|
| Add / edit product | `ProductFormDialog` | GraphQL `createProduct` |
| Add grade | `GradeFormDialog` | GraphQL `createGrade` (loads product list via REST `getProductsRest` for dropdown) |
| Set grade prices | `SetGradePricePage` / cubit | GraphQL `createDailyPrice` (one mutation per grade) |

### Admin profile

`AdminProfilePage` — profile display and logout (uses auth layer).

### Admin state overview

| Bloc / Cubit | Purpose |
|--------------|---------|
| `AdminNavigationCubit` | Bottom tab index |
| `AdminDashboardBloc` | Dashboard fetch |
| `AdminProductsBloc` | Product list, search, date filter |
| `ProductActionBloc` | Create product/grade dialogs |
| `ProductFormCubit` / `GradeFormCubit` | Dialog form state |
| `SetGradePriceCubit` | Daily price entry per grade |

---

## Merchant (`features/merchant/`)

Shell: **`MerchantBucketView`** — bottom nav with 3 tabs.

| Tab | Screen | Status | API |
|-----|--------|--------|-----|
| Dashboard | `MerchantDashboardPage` | Placeholder | — |
| Inventory | `MerchantInventoryPage` | Placeholder | — |
| Transactions | `MerchantTransactionsPage` | Placeholder | — |

### Merchant profile & details (wired)

| Screen | Status | API |
|--------|--------|-----|
| `MerchantProfilePage` | Wired | Profile + navigation to details |
| `MerchantDetailsPage` | Wired | `GET/POST /rest/accounts/merchant-info` |

`MerchantDetailsBloc` — fetch and save merchant address, phone, city, state, pincode.

### Planned merchant APIs (not wired)

When implemented, these screens should use GraphQL (Bearer merchant JWT):

| Screen | Backend operations |
|--------|-------------------|
| Dashboard | `getPositions`, `getGradePosition` |
| Inventory | `getPositions`, position P&L fields |
| Transactions | `listTransactions`, `listGradeTransactions` |
| Buy / Sell actions | `buy`, `sell` mutations |

---

## Shared UI (`core/`)

| Widget | Used in |
|--------|---------|
| `ShimmerWidget` | Loading placeholders (admin products) |
| `SearchableDropdown` | Grade form product picker |
| `AppPrimaryButton` / snackbars | Forms across auth and admin |
| `Logo` | Auth screens |

---

## Role comparison

| Capability | Admin app | Merchant app |
|------------|-----------|--------------|
| Login / register | ✓ | ✓ |
| View system dashboard | ✓ | — |
| Manage products / grades / prices | ✓ | — |
| Merchant address details | — | ✓ |
| View positions | — | Planned |
| Buy / sell spices | — | Planned |
| Transaction history | — | Planned |

---

## File index (presentation entry points)

```
lib/features/
├── onboarding/presentation/pages/
│   ├── splash_screen.dart      ← app start (main.dart home)
│   └── onboarding_page.dart
├── auth/presentation/pages/
│   ├── check_email_page.dart
│   ├── login_page.dart
│   └── register_page.dart
├── admin/presentation/pages/
│   ├── admin_bucket_view.dart  ← admin home
│   ├── admin_dashboard_page.dart
│   ├── admin_products_page.dart
│   ├── admin_ads_page.dart
│   ├── admin_profile_page.dart
│   └── set_grade_price_page.dart
└── merchant/presentation/pages/
    ├── merchant_bucket_view.dart  ← merchant home
    ├── merchant_dashboard_page.dart
    ├── merchant_inventory_page.dart
    ├── merchant_transactions_page.dart
    ├── merchant_profile_page.dart
    └── merchant_details_page.dart
```

---

## Related docs

- [NETWORKING.md](./NETWORKING.md) — endpoint details
- [ARCHITECTURE.md](./ARCHITECTURE.md) — layers and DI
- [SETUP.md](./SETUP.md) — run instructions
