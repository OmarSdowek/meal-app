import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/widgets/category_item.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Meal App"),
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
        centerTitle: true,
      ),
      body:
    ListView.builder(
      itemBuilder:
          (context, index) {
      return  CategoryItem(id: cat[index].id, image: cat[index].image,name: cat[index].name,);
    },
    itemCount: 8,
    )



    );
  }
}
