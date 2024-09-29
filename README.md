# Temperature Converter App

A simple Flutter app that converts temperature from Fahrenheit to Celsius and vice versa.

![App Screenshot](assets/images/Preview.png.png)

## Table of Contents

- [Getting Started](#getting-started)
- [Running the App](#running-the-app)
- [Using the App](#using-the-app)
- [Features](#features)
- [Code Structure](#code-structure)
- [Widgets Used](#widgets-used)
- [Contributing](#contributing)

## Getting Started

To run this app, you'll need to have Flutter installed. Follow the instructions on the [Flutter website](https://flutter.dev/docs/get-started/install) to install Flutter.

## Running the App

1. Clone the repository:  
   `git clone https://github.com/your-username/temperature-converter.git`
2. Navigate to the project directory:  
   `cd temperature-converter`
3. Run the app:  
   `flutter run`

## Using the App

- Enter a temperature value in the text field.
- Select conversion type (F to C or C to F) using the radio buttons.
- Tap "Convert" to get the result below.
- Scroll down to view conversion history.

## Features

- Converts temperature between Fahrenheit and Celsius.
- Keeps a history of all conversions.
- Simple user interface.

## Code Structure

- **TempConverterApp:** Main app class.
- **TempConverterScreen:** Displays conversion interface.
- **_TempConverterScreenState:** Manages the state.

## Widgets Used

- **TextField:** For entering the temperature value, using `_controller` and `_focusNode` for input handling and focus management.
- **RadioListTile:** For selecting the conversion type (F to C or C to F).
- **ElevatedButton:** A button used to trigger the temperature conversion.
- **Text:** Used to display the result of the conversion and conversion history.
- **ListView.builder:** Dynamically builds the list of past conversions for history.
- **Padding:** Adds padding around the screen's content.
- **Row & Expanded:** Used to layout the radio buttons side by side.
- **SizedBox:** Adds spacing between widgets.

## Contributing

1. Fork the repository.
2. Clone your fork:  
   `git clone https://github.com/your-username/temperature-converter.git`
3. Create a new branch:  
   `git checkout -b feature/YourFeatureName`
4. Make changes and commit:  
   `git commit -m "Add your message here"`
5. Push to your fork:  
   `git push origin feature/YourFeatureName`
6. Submit a pull request.

---

Make sure to follow Flutter coding standards when contributing.


