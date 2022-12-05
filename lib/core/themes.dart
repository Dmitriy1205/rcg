import 'package:flutter/material.dart';

ThemeData appThemeData() {
  return ThemeData(
    fontFamily: 'Roboto',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF009BCE),
        // Colors.lightBlue[600]!.withOpacity(0.6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    ),
    scaffoldBackgroundColor: Colors.grey.shade100,
  );
}
