# 📊 Responsive Dashboard UI

A responsive multi-section dashboard built using Flutter. This project demonstrates the use of different Flutter layout widgets to create a dashboard that adapts to different screen sizes.

## 🚀 Features

- Responsive UI for different screen sizes
- Dashboard header section
- Statistics cards using GridView
- Recent activities using ListView
- Flexible and Expanded widgets for layout management
- MediaQuery for responsive design

## 🛠️ Technologies Used

- Flutter
- Dart
- MediaQuery
- GridView
- ListView
- Flexible
- Expanded

## 📱 Responsive Design

The dashboard automatically adjusts according to the screen size.

### 🖥️ Desktop View

Multiple statistics cards are displayed in a row to efficiently use the available screen space.

### 📱 Mobile View

The layout adjusts to smaller screens and displays content vertically for better readability.

## 📂 Project Structure

```text
lib/
│
├── screens/
│   └── dashboard_screen.dart
│
├── widgets/
│   ├── activity_list.dart
│   ├── dashboard_header.dart
│   └── stats_grid.dart
│
└── main.dart