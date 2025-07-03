import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';

import '../data.dart';

class Mealscreen extends StatelessWidget {
  const Mealscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String? name = data["1"];
    String id = data["2"];
    List<Meal> Mealfilter = DUMMY_MEAL.where((e) {
      return e.categoryNumber.contains(id);
    }).toList();
    return Scaffold(
      backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.white,
              icon: Icon(Icons.arrow_back_ios)),
          title: Text(
            name!,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(imageUrl: Mealfilter[index].imageUrl,
                title:  Mealfilter[index].title, id: Mealfilter[index].id,);
          },
          itemCount: Mealfilter.length,
        )));
  }
}
