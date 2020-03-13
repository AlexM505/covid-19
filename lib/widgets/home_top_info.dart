import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget{

  final textStyle = TextStyle(fontSize:36.0, letterSpacing: -1,fontWeight: FontWeight.bold, color: Color(0xff505050),fontFamily: "Calibre-Semibold");

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top:40.0, left: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Coronavirus Covid-19",style: textStyle),
//          Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text("Coronavirus", style: textStyle),
//              Text("Covid-19", style: textStyle)
//            ],
//          ),
//          IconButton(
//              icon: Icon(Icons.notifications_none, size: 32.0),
//              onPressed: (){print("Press IconButton");}
//          )
          // Icon(Icons.notifications_none, size: 32.0,color: Theme.of(context).primaryColor,),
        ],
      ),
    );
  }
}