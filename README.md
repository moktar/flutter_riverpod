# Flutter Riverpod Examples Workspace

This repository is a Flutter workspace that contains multiple Riverpod-based
example apps. Each app focuses on a different state-management pattern, from
simple local state to async API fetching and derived state.

## Included Apps

| App | Path | Focus |
| --- | --- | --- |
| Counter | `examples/counter` | `@riverpod` class + generated provider and notifier updates |
| First App (Random Joke) | `examples/first_app` | `FutureProvider`-style async flow, loading/error/data handling, refresh |
| Random Number | `examples/random_number` | Basic `NotifierProvider` state updates |
| Todos | `examples/todos` | Complex list state, filtering, derived providers, and hooks integration |

Each app includes platform folders for Android, iOS, web, macOS, Windows, and
Linux.

## Workspace Structure

The root `pubspec.yaml` is a Dart workspace that includes:

- `examples/first_app`
- `examples/counter`
- `examples/todos`
- `examples/random_number`

## Prerequisites

- Flutter SDK installed and configured
- A device, emulator, or simulator for running apps

## Run An Example

Use the same flow for any app:

```bash
cd examples/<app_name>
flutter pub get
flutter run
```

Example:

```bash
cd examples/counter
flutter pub get
flutter run
```

## Analyze And Test

Run static analysis from the workspace root:

```bash
dart analyze
```

Run tests per app:

```bash
cd examples/<app_name>
flutter test
```

## Code Generation (Counter Example)

The counter app uses `riverpod_annotation` + generated code (`my_app.g.dart`).
When provider annotations change:

```bash
cd examples/counter
dart run build_runner build --delete-conflicting-outputs
```

## Notes

- `examples/first_app` requires internet access for the joke API call.
- Some example `widget_test.dart` files are still template-style tests and can
  be expanded to match current app behavior.

## License

This project is licensed under the MIT License. See `LICENSE`.
