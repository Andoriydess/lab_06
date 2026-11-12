import 'package:flutter/material.dart';
import './widgets/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(overlayColor: Colors.grey),
        ),

        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.blueGrey)
        ),

        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),

        useMaterial3: true,
      ),
      home: const SignInScreen(),
    );
  }
}