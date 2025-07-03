import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

import '../data.dart';
import '../storage.dart';

class MealDetails extends StatefulWidget {
  const MealDetails({super.key});

  @override
  State<MealDetails> createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
  bool isTouched = false;
  @override
  Widget build(BuildContext context) {

    var Data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String title = Data["1"];
    String id = Data["2"];
    Meal detailsmeal = DUMMY_MEAL.firstWhere((value) {
      return value.id == id;
    });
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
          actions: [
            IconButton(
              icon: Icon(
                isTouched ? Icons.favorite : Icons.favorite_border,
                color: isTouched ? Colors.red : Colors.yellow,
                size: 40,
              ),
              onPressed: () {
                setState(() {
                  isTouched = !isTouched; // ← دا المهم لتبديل الحالة
                });
                if (!Storage.mealFavourite.contains(detailsmeal)) {
                  Storage.mealFavourite.add(detailsmeal);
                }
              })
            ],
          title: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image.asset(
                    detailsmeal.imageUrl,
                    width: 380,
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Description",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                detailsmeal.description,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                "Salary : ${detailsmeal.salary}",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Time : ${detailsmeal.time}",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              )
            ],
          ),
        ));
  }
}
