# Hashpod — Project Scaffold Walkthrough

## What Was Built

A complete Flutter multi-platform desktop project scaffold for **Hashpod**, targeting Linux, Windows, and macOS.

---

## Project Structure

```
hashpod/
├── lib/
│   ├── main.dart                          # App entry point
│   ├── core/
│   │   ├── theme/app_theme.dart           # Design system (colors, spacing, typography, ThemeData)
│   │   ├── router/app_router.dart         # GoRouter config with named routes
│   │   └── i18n/translations.g.dart      # [generated] slang i18n output
│   ├── features/
│   │   ├── servers/domain/server.dart     # Server model (Freezed + JSON)
│   │   └── containers/domain/
│   │       └── container_info.dart        # ContainerInfo, ContainerStats, ServerMetrics
│   └── shared/widgets/
│       └── placeholder_screen.dart        # Dev stub screen
├── assets/translations/
│   ├── en.json                            # English (base locale)
│   ├── pt_BR.json                         # Brazilian Portuguese
│   └── es.json                            # Latin American Spanish
├── pubspec.yaml
└── slang.yaml
```

---

## Key Dependencies

| Package | Purpose |
|---|---|
| `go_router` | Type-safe navigation, dialog routes |
| `flutter_riverpod` | State management |
| `freezed` + `json_serializable` | Immutable domain models |
| `slang` + `slang_flutter` | Type-safe i18n (en, pt-BR, es) |
| `fl_chart` | Sparklines / CPU-RAM gauges |
| `flex_color_scheme` | Advanced dark theme builder |
| `google_fonts` | Inter + JetBrains Mono |
| `dartssh2` | SSH tunneling to remote servers |
| `window_manager` | Window size/title/min-size |
| `shared_preferences` + `path_provider` | Local persistence + file paths |

---

## Design Tokens

| Token | Value |
|---|---|
| Background | `#0D1117` |
| Cards | `#161B22` |
| Accent (cyan) | `#00E5FF` |
| Status Online | `#00E676` |
| Status Offline | `#EF5350` |
| UI Font | Inter |
| Mono Font | JetBrains Mono |

---

## Code Generation Commands

```bash
# Regenerate i18n translations
dart run slang

# Regenerate Freezed models + JSON
dart run build_runner build --delete-conflicting-outputs
```

---

## Validation Results

```
✅ flutter pub get       → 107 packages resolved
✅ dart run slang        → 3 locales, 49 strings each
✅ dart run build_runner → 6 outputs (Freezed + JSON)
✅ flutter analyze lib/  → No issues found!
```
