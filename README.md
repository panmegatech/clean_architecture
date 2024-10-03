# Flutter Clean Architecture

This repository showcases a Flutter application that implements Clean Architecture principles. The project is structured to ensure a clear separation of concerns, making it easy to maintain, test, and scale.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Architecture Overview](#architecture-overview)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Clean Architecture is a software design philosophy that promotes separation of concerns and independence of frameworks, UI, and databases. This Flutter project demonstrates how to implement Clean Architecture principles effectively in a real-world application, focusing on maintainability and testability.

## Features

- Modular structure with separate layers:
  - **Presentation Layer**: Flutter UI components and BLoC for state management.
  - **Domain Layer**: Business logic and entities.
  - **Data Layer**: Data sources and repositories.
- Dependency Injection using GetIt.
- Error handling with custom exceptions.
- Unit tests for core functionalities.

## Architecture Overview

The architecture is organized into three main layers:

1. **Presentation Layer**: 
   - Contains the UI components and handles user interactions.
   - Uses BLoC for managing state and responding to events.

2. **Domain Layer**:
   - Contains business logic, entities, and use cases.
   - Defines interfaces for repositories, ensuring decoupling from the data layer.

3. **Data Layer**:
   - Implements data sources (e.g., APIs, databases) and repositories.
   - Handles data fetching and caching mechanisms.

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/flutter_clean_architecture.git
   ```
   
2. Navigate to the project directory:
   ```bash
   cd flutter_clean_architecture
   ```

3. Install the dependencies:
   ```bash
   flutter pub get
   ```

4. Run the application:
   ```bash
   flutter run
   ```

## Usage

The application provides a simple interface to fetch random jokes using a REST API. Users can refresh to get a new joke, demonstrating the use of Clean Architecture in handling API calls and managing state.


## Project Structure

This project is organized into a modular structure, following Clean Architecture principles. Below is an overview of the directory structure and its components:

```
lib/
├── core/                                               # Core functionalities and shared components
│   ├── error/                                          # Error handling components
│   │   ├── exception.dart                              # Custom exceptions
│   │   └── failure.dart                                # Failure representation
│   └── utils/                                          # Utility functions and helpers
│
├── features/                                           # Features of the application
│   └── joke/                                           # Joke feature module
│       ├── data/                                       # Data layer for the joke feature
│       │   ├── datasources/                            # Data sources for fetching data
│       │   │   └── joke_remote_data_source.dart        # Remote data source for jokes
│       │   ├── models/                                 # Data models
│       │   │   └── joke_model.dart                     # Model representation for jokes
│       │   └── repositories/                           # Repositories for data handling
│       │       └── joke_repository_impl.dart           # Implementation of the joke repository
│       ├── domain/                                     # Domain layer for business logic
│       │   ├── entities/                               # Entities representing core business objects
│       │   │   └── joke_entity.dart                    # Joke entity representation
│       │   ├── repositories/                           # Interfaces for repositories
│       │   │   └── joke_repository.dart                # Joke repository interface
│       │   └── usecases/                               # Use cases for handling business logic
│       │       └── get_random_joke_usecase.dart        # Use case for getting a random joke
│       └── presentation/                               # Presentation layer for UI components
│           ├── bloc/                                   # BLoC components for state management
│           │   ├── joke_bloc.dart                      # BLoC for the joke feature
│           │   ├── joke_event.dart                     # Events for the joke BLoC
│           │   └── joke_state.dart                     # States for the joke BLoC
│           ├── pages/                                  # UI pages
│           │   └── joke_page.dart                      # Page displaying the joke
│           └── widgets/                                # Custom widgets
│               ├── custom_center.dart                  # Custom center widget
│               └── custom_text.dart                    # Custom text widget
│
├── main.dart                                           # Main entry point of the application
└── setup_getit.dart                                    # Setup for dependency injection using GetIt
```

### Directory Descriptions

- **core/**: Contains core functionalities that are shared across the application, such as error handling and utility functions.
- **features/**: Contains different features of the application, organized in a modular way. Each feature has its own data, domain, and presentation layers.
  - **joke/**: The specific feature module for jokes, including its data sources, models, repositories, domain entities, and use cases.
- **presentation/**: Contains the presentation layer, which handles UI components and state management using BLoC.
- **main.dart**: The entry point of the Flutter application.
- **setup_getit.dart**: Handles the setup of dependency injection using the GetIt package.

This structure promotes a clear separation of concerns, making the application easier to maintain, test, and scale.


## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any suggestions or improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
