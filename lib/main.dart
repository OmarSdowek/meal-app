import 'package:flutter/material.dart';
import 'package:meal_app/screens/HomeScreen.dart';
import 'package:meal_app/screens/home.dart';
import 'package:meal_app/screens/mealdetails.dart';
import 'package:meal_app/screens/mealscreen.dart';
import 'package:meal_app/screens/mealscreen.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "s1" : (context) => Mealscreen(),
        "s2" : (context) => MealDetails()
      },
      home: Home(),
    );
  }
}

