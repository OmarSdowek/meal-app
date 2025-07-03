import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  String imageUrl;
  String title;
  String id;

  MealItem({required this.imageUrl, required this.title, required this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
          color: Colors.teal,
        ),
        width: double.infinity,
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imageUrl,
              fit: BoxFit.fill,
              height: double.infinity,
              width: 120,
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("s2",
                    arguments: {"1": title, "2": id, "3": imageUrl});
              },
              icon: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
    ;
  }
}
