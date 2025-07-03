import 'package:flutter/material.dart';
import 'package:meal_app/screens/favorite.dart';

import '../storage.dart';
import 'HomeScreen.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex =0;
  List<Widget> screens = [
    Homescreen(),
    Favorite()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Badge(
                label: Text("${Storage.mealFavourite.length}"),
                backgroundColor: Colors.red,
                largeSize: 13,
                child: Icon(Icons.favorite_border)),
             label: "favorite"
          ),


        ],
        currentIndex: currentindex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        elevation: 0,
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
      ),
      body: screens[currentindex],
    );
  }
}
