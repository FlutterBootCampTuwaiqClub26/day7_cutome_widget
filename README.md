# Taskly (day7_practice)

A simple Flutter task-list UI built as day 7 practice in the Flutter 4 bootcamp. It renders a home screen with a greeting header, category cards, and a scrollable list of today's tasks — focused on practicing layout widgets (`Row`, `Column`, `ListView.builder`, `Card`) and basic app structure.

<img width="373" height="803" alt="Taskly home screen" src="https://github.com/user-attachments/assets/c89087b7-1260-4a86-9b73-81b013a0e841" />

## Features

- Greeting header with profile image
- Category cards (Work, Study, Favorite) with task counts
- Scrollable list of today's tasks pulled from static sample data
- Centralized app color constants

## Project structure

```
lib/
├── main.dart                # App entry point
├── constants/
│   └── app_color.dart        # Shared color palette
├── models/
│   └── task_model.dart        # TaskModel data class
├── data/
│   └── tasks_data.dart         # Sample/static task list
└── screens/
    └── home_screen.dart         # Home screen UI
```

## Getting started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (Dart SDK ^3.12.2)
- A configured emulator/simulator or physical device

### Run the app

```bash
flutter pub get
flutter run
```

## Notes

This is a learning exercise — the task list currently uses static sample data (`lib/data/tasks_data.dart`) rather than a backend or persistent storage.
