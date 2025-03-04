# Events Booking Application - Flutter

Welcome to the Events Booking App built with Flutter! This app allows users to browse, book, and
share events seamlessly with a smooth and modern experience.

## Description

✅ User Authentication – Secure login, registration, and OTP verification.
✅ Dynamic Home Screen – Displays recommended events fetched from Api
✅ All Events Screen – Lists all available events in the app.
✅ Event Details Screen – Shows full event details.
✅ Organizer Profile – Displays organizer details, reviews, and their events.
✅ Local Notifications – Notifies users 1 hour before an event to ensure they don’t miss it.
✅ Event Sharing – Users can long-press to share event images, names, and locations on social media.
✅ Offline Support – Events are cached locally, allowing users to browse them without an internet
connection.

## ⚙️ Tech Stack

Networking : Dio
Local Notifications: flutter_local_notifications
Offline Caching: Hive
State Management: Getx
Social Media Sharing: flutter_share_plus
responsive UiDesign : flutter_screen_util

## Project Structure & Code Quality

This application follows Clean Architecture principles to ensure a scalable, maintainable, codebase.
The project is well-structured with a clear separation of concerns, making future enhancements and
modifications easier.

✅ Code Quality & Best Practices
🔹 Implemented Clean Code Principles – Ensuring readability, reusability, and maintainability.
🔹 Followed Clean Architecture – Dividing the project into Presentation, Domain, and Data layers for
better organization.
🔹 Applied Design Patterns where needed :

Singleton Pattern – Used for managing single instances efficiently when required.

## App Instructions

1-Navigation

-No external packages used
-The app does not rely on any third-party navigation libraries.
Global Key-based navigation
-Implemented using GlobalKey<NavigatorState> for screen transitions.
– A dedicated NavigationService has been created to provide a unified and easy
way to handle navigation within the app.

2- NetWorkStructure & error handling

This project follows a structured error-handling approach using DataState, which ensures efficient
API response management.
Errors are categorized and propagated through different layers (Network → Service → Repository →
Controller → UI) to maintain stability and improve debugging.

## Why Handle Errors in Different Layers?

Each layer in the app has a specific responsibility:

## Network Layer

Catches low-level errors like network failures, timeouts, or request issues.

️## Service Layer

Calls API endpoints and converts DioError into meaningful exceptions.
Provides clear error types (BadRequestException, UnAuthorizedException, etc.).

## Repository Layer

Converts API responses into DataState<T>.
Ensures proper parsing of data and throws DataFailed with Dirty Data error if parsing fails.

## Controller Layer

The controller receives DataState results and processes them.
Determines whether the state is successful (DataSuccess) or failed (DataFailed).
Extracts error messages and updates the UI accordingly.

3- Customized Widget

Custom Widgets Used
The project also includes customized widgets to maintain consistency and reusability in UI
components. Some key widgets used are:

TextFieldDefault → A reusable text input field with consistent styling.
CustomText → A customizable text widget for uniform typography.
ImageGeneric → A flexible image widget for handling different image sources dynamically.
These components improve maintainability and ensure a clean UI structure.


  