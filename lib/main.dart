import 'package:flutter/material.dart';
import 'package:food_app/core/theme.dart';
import 'package:food_app/pages/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: const BottomNavBarPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
