# Weather App 🌦️

This is a simple Flutter weather application that allows users to check the current weather of any city using the OpenWeather API. The app uses GetX for state management and shows animations based on the weather conditions (e.g., sunny, cloudy, rainy). It also supports Dark and Light mode themes.

## Features

- 🌍 **Fetch Current Weather**: Enter a city name to retrieve the current weather using OpenWeather API.
- 🌤️ **Weather Animations**: Displays different animations depending on the weather conditions (e.g., sunny, cloudy, rainy).
- 🌗 **Dark and Light Mode**: Toggle between dark and light mode using a button in the app.
- ⚡ **GetX for State Management**: Simple and efficient state management using GetX.
- 🏙️ **City Search**: Easily search for weather by entering a city name.

## Screenshots

![Light Mode Screenshot](path_to_light_mode_screenshot)
![Dark Mode Screenshot](path_to_dark_mode_screenshot)

## Installation

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- OpenWeather API Key: [Get an API key](https://openweathermap.org/api)

### Steps

1. **Clone the repository:**

    ```bash
    git clone https://github.com/Saurabhmaurya111/weather-app.git
    ```

2. **Navigate to the project directory:**

    ```bash
    cd weather-app
    ```

3. **Get the dependencies:**

    ```bash
    flutter pub get
    ```

4. **Run the app:**

    ```bash
    flutter run
    ```

## Configuration

To use the OpenWeather API, you need to add your API key in the project.

1. Get your API key from [OpenWeather](https://openweathermap.org/api).
2. In the `weather_controller.dart` file, replace `YOUR_API_KEY_HERE` with your actual API key.

```dart
const String apiKey = 'YOUR_API_KEY_HERE';
