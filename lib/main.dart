import 'package:flutter/material.dart';
import 'package:travel_guide/page/splashscreen.dart'; // Ensure this path is correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Guide',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(
              255, 0, 153, 255), // Replace with your desired color
        ),
      ),
      home:
          const SplashScreen(), // Ensure SplashScreen is correctly implemented
    );
  }
}
