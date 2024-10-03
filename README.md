# Flutter Clean Architecture

This repository showcases a Flutter application that implements Clean Architecture principles. The project is structured to ensure a clear separation of concerns, making it easy to maintain, test, and scale.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Architecture Overview](#architecture-overview)
- [Getting Started](#getting-started)
- [Usage](#usage)
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

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any suggestions or improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
