# 🌍 World Time App

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)

**A real-time world clock application with dynamic backgrounds that adapt to the time of day.**

## 📖 Overview
World Time App is my first complete Flutter application, built with a primary focus on implementing and mastering **Clean Architecture** principles. It serves as a real-time clock designed to help users stay connected with global time zones by fetching live data from external APIs, while providing an immersive user experience through dynamic UI backgrounds that adapt to the current time of day in each selected location.

## ✨ Features
- **Real-time Clock:** Fetches accurate time data using external APIs.
- **Dynamic Backgrounds:** UI background changes automatically based on the time of day (Day/Night) in the selected city.
- **Location Selection:** Browse and select from a list of global cities to view their current time.
- **Clean Architecture:** Organized code following Domain-Driven Design and MVVM principles.
- **Smooth Navigation:** Seamless transitions between the splash screen, home, and selection views.

## 🛠️ Tech Stack
- **Flutter SDK:** Built with the latest Flutter framework.
- **Dart:** `^3.11.0`
- **Major Dependencies:**
  - [`http`](https://pub.dev/packages/http): For making asynchronous network requests to fetch time data.
  - [`intl`](https://pub.dev/packages/intl): Used for advanced date and time formatting.
  - [`flutter_spinkit`](https://pub.dev/packages/flutter_spinkit): Provides elegant loading animations for the splash screen and data transitions.
  - [`cupertino_icons`](https://pub.dev/packages/cupertino_icons): High-quality icons for a polished look and feel.

## 🏗️ Architecture
The project follows **Clean Architecture** combined with the **MVVM (Model-View-ViewModel)** pattern to ensure scalability and maintainability.

- **Data Layer:** Handles API communication (`WorldTimeRepo`) and data models (`WorldTimeResponseModel`).
- **Domain Layer:** Contains the core business logic, Use Cases, and Repository interfaces.
- **Scenes Layer (UI):** Implements the MVVM pattern where each screen has its own View and ViewModel.
- **Constants:** Centralized management of URLs, Strings, and Image assets.

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-started)

### Installation
1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/WorldTimeApp.git
   cd WorldTimeApp
   ```
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Run the app:**
   ```bash
   flutter run
   ```

## 📂 Project Structure
```text
lib/
├── Constants/          # Application constants (URLs, images, strings)
├── Data/               # Data sources, models, and repository implementations
│   ├── Models/
│   └── WorldTimeRepo/
├── Domain/              # Business logic (Entities, UseCases, Interfaces)
│   ├── Entities/
│   ├── RepositoriesInterfaces/
│   └── UseCases/
├── Scenes/              # UI Layer (Views and ViewModels)
│   ├── HomeView/
│   ├── SelectCountryView/
│   └── SplashScreenView/
├── app_routing.dart    # Centralized navigation management
└── main.dart           # Entry point of the application
```

## 📱 Supported Platforms
- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

---
*Developed with ❤️ using Flutter.*
