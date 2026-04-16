# Random Number App

This example demonstrates simple state management with Riverpod by generating
and displaying random numbers.

## What This App Does

- Shows a random number when the app starts
- Generates a new random number when you tap **Generate**
- Uses Riverpod `Notifier` + `NotifierProvider` for app state

The generated value range is `0` to `9998` (`Random().nextInt(9999)`).

## Project Structure

- `lib/main.dart`: app entry point and `ProviderScope` setup
- `RandomNumberGenerator`: `Notifier<int>` that holds and updates random state
- `randomNumberProvider`: provider exposing notifier state
- `RandomConsumer`: widget that watches and renders the current number

## Run The App

From the workspace root:

```bash
flutter pub get
cd examples/random_number
flutter run
```

## Run Tests

```bash
cd examples/random_number
flutter test
```

## Note

`test/widget_test.dart` is still the default Flutter counter template test and
does not yet match this random-number app behavior.
