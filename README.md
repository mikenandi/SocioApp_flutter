# SocioApp

### Social media app which is made for the purpose of learning fluter

## Table of Contents

- [Features](#features)
- [App Design](#app-design)
- [Folder Structure](#folder-structure)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)

## Features

<!-- *Insert a brief description of the key features of the SocioApp.* -->

-
-

## App Design

The design of the SocioApp can be accessed [here](https://www.figma.com/file/ldUCcQApMTiTzs2jzAx7Iw/Flutter-course?type=design&node-id=0-1&mode=design&t=PeLn2xtKZjAdofYS-0).

Please note that these are just mockup images, and the actual app may have some visual differences.

## Folder Structure

The project follows the following folder structure:

```
├── lib/
│   ├── components/        # Reusable UI components
│   ├── config/            # Constants and configuration files
│   ├── utils/             # Utility functions and helper modules
│   ├── data/              # Api requests
│   ├── enums/             # Enums for app.
│   ├── styles/            # Styles configs for project
│   ├── models/            # For handling response data conversion
│   ├── navigation/        # Navigation configuration
│   ├── provider/          # State management
│   └── screens/           # App screens
│
├── main.dart              # Entry point of the application
├── pubspec.yaml           # Project dependencies and configuration
└── ...

```

## Technologies Used

- Flutter
- Dart
- Provider (for state management)
- Flutter Bloc (for more complex state management)
- Dio (for HTTP requests)
- Flutter Navigation
- Flutter Charting Library (if applicable)
- Dart DevTools

## Installation

1. Clone the repository: `git clone https://github.com/mikenandi/SocioApp_flutter`
2. Navigate to the project directory: `cd SocioApp_flutter`
3. Install dependencies: `flutter pub get`

## Usage

1. Start the Flutter development environment: `flutter run`
2. For Android, run: `flutter run -d android`
3. For iOS, run: `flutter run -d ios`
