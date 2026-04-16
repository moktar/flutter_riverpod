# Counter Example

This example demonstrates a simple counter app built with Flutter and Riverpod.

## What This App Shows

- Using `ProviderScope` to enable Riverpod across the app
- Creating app state with `@riverpod` code generation
- Reading provider state in the UI with `ref.watch(...)`
- Updating state through provider notifier methods

## How It Works

- `lib/main.dart` bootstraps the app with `ProviderScope`.
- `lib/my_app.dart` defines:
  - `Counter` provider (`@riverpod class Counter extends _$Counter`)
  - `increment()` to update state
  - `Home` widget that displays the count and increments on button press
- `lib/my_app.g.dart` is generated code for the provider.

## Run The App

From the workspace root:

```bash
flutter pub get
cd examples/counter
flutter run
```

## Run Tests

```bash
cd examples/counter
flutter test
```

## Regenerate Riverpod Code

If you change `@riverpod` declarations, regenerate code:

```bash
cd examples/counter
dart run build_runner build --delete-conflicting-outputs
```
