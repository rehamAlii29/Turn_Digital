# Events Viewing Application - Flutter

## Description

Welcome to the Events Viewing App, built with Flutter. This app allows users to browse events, view
event details, check organizer profiles, and share events seamlessly.

## Features

1. **User Authentication** – Secure login, registration, and OTP verification.
2. **Dynamic Home Screen** – Displays recommended events fetched from the API.
3. **All Events Screen** – Lists all available events in the app with pagination.
4. **Event Details Screen** – Shows complete event details.
5. **Organizer Profile** – Displays organizer details, reviews, and their hosted events.
6. **Local Notifications** – Notifies users 1 hour before an event.
7. **Event Sharing** – Users can long-press to share event details on social media.
8. **Offline Support** – Events are cached locally, allowing users to browse them without an
   internet connection.

## Tech Stack

1. **Networking:** Dio
2. **Local Notifications:** flutter_local_notifications
3. **Offline Caching:** Hive
4. **State Management:** GetX
5. **Social Media Sharing:** flutter_share_plus
6. **Responsive UI Design:** flutter_screen_util

## Project Structure & Code Quality

This application follows **Clean Architecture** and **Clean Code Principles** to ensure a **scalable
**, **maintainable**, and **readable** codebase. The project is structured with a **clear separation
of concerns**, making future enhancements easier and improving code reusability.
Additionally, **User Cache** is implemented to store user data locally, reducing API calls and
enhancing offline support.

### Code Quality & Best Practices

1. **Clean Code Principles** to improve readability, reusability, and maintainability.
2. **Clean Architecture** with separate layers:
    1. **Presentation Layer**
    2. **Domain Layer**
    3. **Data Layer**

## Design Patterns

The application implements different **design patterns** where needed, including the **Singleton
Pattern**.

### Singleton Pattern

The **Singleton Pattern** is used throughout the project to efficiently manage single instances when
needed. It is applied in various layers, such as:

1. **Services** – Ensuring a single instance of a network or database handler.
2. **Utilities** – Avoiding unnecessary object creation and improving performance.

## App Instructions

### Navigation

1. No third-party navigation libraries were used.
2. The app relies on **GlobalKey<NavigatorState>** for screen transitions.
3. A dedicated **NavigatorService** was created to manage navigation across the app, ensuring a
   centralized and efficient way to handle screen transitions programmatically. .

### Network Structure & Error Handling

This project follows a structured **error-handling approach** using **DataState**, ensuring *
*efficient API response management**. Errors are categorized and propagated through different layers
to **maintain stability** and **improve debugging**.

Each layer in the app has a specific responsibility:

1. **Network Layer** – Handles low-level errors such as network failures, timeouts, or request
   issues.
2. **Service Layer** – Calls API endpoints and converts **DioError** into meaningful exceptions,
   providing clear error types such as **BadRequestException** and **UnAuthorizedException** etc ...
3. **Repository Layer** – Converts API responses into **DataState<T>** and ensures proper **parsing
   of data**, throwing **DataFailed** if parsing fails.
4. **Controller Layer** – Receives **DataState results** and processes them, determining whether the
   state is **successful (DataSuccess) or failed (DataFailed)**, extracting **error messages**, and
   updating the **UI accordingly**.

## Custom Widgets

The project includes **reusable custom widgets** to maintain **consistency** in UI components:

1. **TextFieldDefault** – A reusable text input field with consistent styling.
2. **CustomText** – A customizable text widget for uniform typography.
3. **ImageGeneric** – A flexible image widget for handling different image sources dynamically.
4. **ButtonDefault** – A customizable button widget with a consistent design across the app.
5. **DataStatusBuilder** – A widget that handles **API data states** (loading, success, error) and
   updates the UI accordingly.

These components improve **maintainability** and ensure a **clean UI structure**.

## Enjoy seamless event discovery with the Events Viewing App! 🚀
