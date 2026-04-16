# First App: Random Joke Generator

This example app fetches a random joke from a public API and displays it using
Riverpod-managed async state.

## Features

- Loads one random joke on startup
- Shows loading, success, and error states
- Supports pull-like refresh behavior via a button
- Displays a top progress bar while refreshing an existing joke

## Tech Stack

- Flutter
- `flutter_riverpod` for state management
- `dio` for HTTP requests

## Project Structure

- `lib/main.dart`: App entry point and `ProviderScope` setup
- `lib/home.dart`: UI and `AsyncValue` rendering logic
- `lib/joke.dart`: `Joke` model, API call, and `randomJokeProvider`

## Data Flow

1. `HomeView` watches `randomJokeProvider`.
2. `randomJokeProvider` calls `fetchRandomJoke()`.
3. `fetchRandomJoke()` requests:
   `https://official-joke-api.appspot.com/random_joke`
4. The UI reacts to provider states:
   loading, data, error, and refreshing.

## Run Locally

From the workspace root:

```bash
flutter pub get
cd examples/first_app
flutter run
```

## Run Tests

```bash
cd examples/first_app
flutter test
```

## Note

`test/widget_test.dart` is still the default Flutter counter test template and
does not yet match this joke app behavior.
