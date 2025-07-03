import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

String name;
String image;
String id;

  CategoryItem({required this.name, required this.image, required this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: InkWell(
          onTap: (){
           Navigator.of(context).pushNamed( "s1" , arguments: {
             "1" : name,
             "2" : id
           });
          },
          splashColor: Colors.grey,
          child: Container(
            width: double.infinity,
            height: 200,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image:  DecorationImage(
                    image: AssetImage("${image}"), fit: BoxFit.fill)),
            child: Container(
                width: double.infinity,
                color: Colors.black54,
                child:  Text(
                 name ,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                )),
          ),
        ),
      ),
    );
  }
}
