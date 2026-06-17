# Setup & Development

## Prerequisites

| Requirement | Version / notes |
|-------------|-----------------|
| Flutter SDK | `^3.10.1` (`environment.sdk` in `pubspec.yaml`) |
| Dart | Bundled with Flutter |
| SpiceLedger Backend | Running at ports **8080** (proxy) and **8081** (graphql) — see [SpiceLedger-Backend](../SpiceLedger-Backend/README.md) |
| IDE | VS Code / Android Studio with Flutter extension |

---

## Initial setup

```bash
cd SpiceLedger-Mobile
flutter pub get
cp .env.example .env
dart run build_runner build --delete-conflicting-outputs
```

---

## Environment configuration

Config is injected at compile time via **`--dart-define`** (not runtime `.env` file loading). Values are read in [`lib/core/config/env_config.dart`](../lib/core/config/env_config.dart).

### `.env` file

Copy [`.env.example`](../.env.example) to `.env` (gitignored). VS Code launch configs pass it with:

```
--dart-define-from-file=${workspaceFolder}/.env
```

### Variables

| Variable | Required | Default if empty | Description |
|----------|----------|------------------|-------------|
| `BASE_URL` | Recommended | `http://10.0.2.2:8080` | Proxy base URL for REST (`dio`) |
| `GRAPHQL_CLIENT` | Recommended | `http://10.0.2.2:8081/graphql` | GraphQL HTTP endpoint |
| `BASIC_AUTH_USER` | For login/register | — | Basic auth username (must match backend) |
| `BASIC_AUTH_PASS` | For login/register | — | Basic auth password |
| `REST_API_TIMEOUT` | No | `30` | Dio connect/receive timeout (seconds) |
| `ENVIRONMENT` | No | `development` | `development` \| `testing` \| `production` |

### Host URLs by platform

| Platform | `BASE_URL` | `GRAPHQL_CLIENT` |
|----------|------------|------------------|
| **Android emulator** | `http://10.0.2.2:8080` | `http://10.0.2.2:8081/graphql` |
| **iOS simulator** | `http://127.0.0.1:8080` | `http://127.0.0.1:8081/graphql` |
| **Physical device** | `http://<LAN-IP>:8080` | `http://<LAN-IP>:8081/graphql` |

`10.0.2.2` is the Android emulator alias for the host machine's `localhost`.

---

## Running the app

### VS Code (recommended)

Launch configurations in [`.vscode/launch.json`](../.vscode/launch.json):

| Config | `ENVIRONMENT` |
|--------|---------------|
| SpiceLedger-Mobile (Dev) | `development` |
| SpiceLedger-Mobile (Test) | `testing` |
| SpiceLedger-Mobile (Prod) | `production` |

All configs use `--dart-define-from-file=.env`.

### CLI

```bash
# Development
flutter run --dart-define-from-file=.env --dart-define=ENVIRONMENT=development

# Release build (Android APK example)
flutter build apk --dart-define-from-file=.env --dart-define=ENVIRONMENT=production
```

---

## Code generation

Required after editing files with:

- `@freezed` (states, events, models)
- `@JsonSerializable` (API models)
- `@injectable` / `@module` (DI)

```bash
dart run build_runner build --delete-conflicting-outputs
```

Watch mode during active development:

```bash
dart run build_runner watch --delete-conflicting-outputs
```

Generated artifacts (do not edit manually):

- `*.freezed.dart`, `*.g.dart`
- `lib/core/di/injection.config.dart`

---

## Backend pairing

1. Start backend: `cd ../SpiceLedger-Backend && make up-full-build`
2. Verify health:
   - `curl http://localhost:8080/rest/health`
   - `curl http://localhost:8081/health`
3. Match `.env` host to your emulator/device (see table above)
4. Login with seed users (`admin@spice.com` / `merchant@spice.com`, password `secret123`)

---

## Common issues

| Problem | Fix |
|---------|-----|
| Connection refused on REST | Wrong `BASE_URL` for platform; backend not running |
| GraphQL fails, REST works | Check `GRAPHQL_CLIENT` points to `:8081/graphql`; rebuild graphql image after backend changes |
| `GetIt: Object/factory not registered` | Run `build_runner build` after adding `@injectable` classes |
| Login 401 | Set `BASIC_AUTH_USER` / `BASIC_AUTH_PASS` in `.env` to match backend |
| Stale tokens after DB reset | Clear app data or logout; secure storage persists across hot restart |

---

## Testing

```bash
flutter test
```

Test coverage is minimal today — expand under `test/` as features grow.

---

## Related docs

- [ARCHITECTURE.md](./ARCHITECTURE.md)
- [NETWORKING.md](./NETWORKING.md)
- [FEATURES.md](./FEATURES.md)
