import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../storage.dart';
import '../widgets/meal_item.dart';

class Favorite extends StatelessWidget {
   Favorite({super.key});
  List MealFavorite = Storage.mealFavourite;
  @override
  Widget build(BuildContext context) {
    //List MealFavorite = Storage.mealFavourite;

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Favorite Meals",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            imageUrl: MealFavorite[index].imageUrl,
            title: MealFavorite[index].title,
            id: MealFavorite[index].id,
          );
        },
        itemCount: MealFavorite.length,
      ),
    );
  }
}
