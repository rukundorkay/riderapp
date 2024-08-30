
# RiderApp

RiderApp is a Flutter-based mobile application designed to facilitate smooth and user-friendly ride-booking experiences. The app is built using the GetX state management library and GetStorage for local data storage.

## Table of Contents
- Features
- User Flow
- Folder Structure
- State Management
- Storage
- Flutter Version
- How to Run

## Features
- **Authentication**: Secure login and registration process.
- **Home**: Dashboard showing available rides, trip history, and more.
- **Complaints**: Users can submit complaints about their rides or services.
- **Onboarding**: A guided onboarding experience for new users.
- **Transport**: Features related to booking, tracking, and managing rides.

## User Flow
1. **Onboarding**: New users are guided through an onboarding process to familiarize themselves with the app.
2. **Authentication**: Users can register or log in to access the app’s features.
3. **Home**: Once logged in, users can view available rides, past trips, and other relevant details.
4. **Transport**: Users can book rides, track their ride status, and manage their bookings.
5. **Complaints**: If needed, users can submit complaints related to their rides directly from the app.

## Folder Structure

```
lib
├── auth
│   ├── controllers
│   ├── view
│   └── bindings
├── home
│   ├── controllers
│   ├── view
│   └── bindings
├── complain
│   ├── controllers
│   ├── view
│   └── bindings
├── onboard
│   ├── controllers
│   ├── view
│   └── bindings
├── transport
│   ├── controllers
│   ├── view
│   └── bindings
├── shared
│   ├── utils
│   ├── functions
│   └── widgets
```

- **Feature-specific folders (`auth`, `home`, etc.)**: These contain the MVC components—controllers, views, and bindings—specific to each feature.
- **Shared folder**: Contains reusable components, utilities, and functions that are used across the app.

## State Management
RiderApp uses GetX for state management. This allows for efficient and responsive UI updates, dependency injection, and route management.

## Storage
GetStorage is used for storing user information, preferences, and other necessary data locally.

## Flutter Version
RiderApp is built using **Flutter 3.22.0**. Please ensure you have this version installed to avoid compatibility issues.

## How to Run
1. Clone the repository.
2. Install dependencies using `flutter pub get`.
3. Run the app on your desired emulator or physical device using `flutter run`.
