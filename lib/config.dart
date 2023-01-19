import 'package:flutter/material.dart';

abstract class Config {
  static ThemeData themeData = ThemeData(
    primarySwatch: Colors.orange,
    buttonTheme: const ButtonThemeData(
      minWidth: double.infinity,
      height: 45,
      buttonColor: Colors.orange,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: Colors.orange,
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    ),
  );

  static InputDecoration input({required String label}) {
    return InputDecoration(
      border: const OutlineInputBorder(),
      isDense: true,
      labelText: label,
    );
  }
}
