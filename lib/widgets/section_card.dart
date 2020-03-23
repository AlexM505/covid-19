import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget{

  final String categoryName;
  final String imagePath;

  SectionCard({this.categoryName, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:6.0),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 2.0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:8.0,vertical: 2.0),
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage(imagePath),
                  height: 70.0,
                  width: 70.0,
                ),
                SizedBox(width: 8.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(categoryName,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade800,
                      ),
                    ),
                    Text("See", style: TextStyle(fontSize: 12.0,color: Colors.blue.shade900))
                  ],
                )
              ],
            ),
          )
      ),
    );
  }

}