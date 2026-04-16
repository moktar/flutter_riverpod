# Todos App

This example demonstrates a complete local todo workflow using Flutter,
`hooks_riverpod`, and `flutter_hooks`.

## Features

- Add todos by typing in the input and pressing Enter
- Toggle completed state with a checkbox
- Edit a todo by tapping it and changing text inline
- Remove a todo by swiping the row away
- Filter by `All`, `Active`, and `Completed`
- Show remaining incomplete item count

The app starts with 3 sample todos:
- Buy cookies
- Star Riverpod
- Have a walk

## State Management

- `todoListProvider` (`NotifierProvider<TodoList, List<Todo>>`):
  owns todo list state and mutation methods (`add`, `toggle`, `edit`, `remove`)
- `todoListFilter` (`NotifierProvider`):
  stores the active filter enum
- `filteredTodos` (`Provider<List<Todo>>`):
  derives visible items based on list + selected filter
- `incompleteTodosCount` (`Provider<int>`):
  derives number of unfinished todos

## Project Structure

- `lib/main.dart`: app UI, filters, inline editing, and list rendering
- `lib/todo.dart`: todo model + notifier logic
- `lib/keys.dart`: testing keys used by filter/input widgets

## Run The App

From the workspace root:

```bash
flutter pub get
cd examples/todos
flutter run
```

## Run Tests

```bash
cd examples/todos
flutter test
```

## Note

`test/widget_test.dart` is still the default Flutter counter template test and
does not yet match this todos app behavior.
