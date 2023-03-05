import 'package:flutter/material.dart';
import 'package:flutter_demo_travel_app/constant.dart';
import 'package:flutter_demo_travel_app/screen/landing/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
          titleMedium: TextStyle(color: colorBlueDark),
        )
      ),
      home: const LandingScreen(),
    );
  }
}

