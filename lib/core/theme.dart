import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: Colors.deepOrange,
  primarySwatch: Colors.deepOrange,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 242, 242, 242),
    foregroundColor: Colors.black,
    elevation: 0,
  ),
  // useMaterial3: true,

  // colorSchemeSeed: Colors.deepOrange,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color.fromARGB(255, 242, 242, 242),
    selectedItemColor: Colors.deepOrange,
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 242, 242, 242),
);
