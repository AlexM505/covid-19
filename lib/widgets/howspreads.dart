
import 'package:flutter/material.dart';
import '../data/howspreads_data.dart';

class HowSpreads extends StatelessWidget{

  final textStyleTitle = TextStyle(fontSize:18.0, letterSpacing: 0,fontWeight: FontWeight.bold, color: Colors.blue);
  final textStyleDesc = TextStyle(fontSize:16.0, letterSpacing: 0, color: Colors.black87);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top:8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
              title: Text('How COVID-19 spreads?', style: TextStyle(color: Colors.black, 
                fontSize: 18.0, fontWeight: FontWeight.w800 ),),
              trailing: Icon(Icons.info, color: Colors.black26,),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(personTopersonTitle, style: textStyleTitle,),
                Text(personToPersonDesc, style: textStyleDesc,),
              ]
            )
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(easilySpreads, style: textStyleTitle,),
                Text(easilySpreadsDesc, style: textStyleDesc,),
                Text(communitySpread, style: textStyleDesc,),
              ]
            )
          ),
          ListTile(
              title: Text("PLAN AND PREPARE", 
                  style: TextStyle(color: Colors.black, 
                  fontSize: 18.0, fontWeight: FontWeight.w800 ),
                ),
              subtitle: Text("Create a household plan of action."),
              trailing: Icon(Icons.info, color: Colors.black26,),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(planDesc, style: textStyleDesc,),
              ]
            )
          ),
          ListTile(
              title: Text("TAKE ACTION", 
                  style: TextStyle(color: Colors.black, 
                  fontSize: 18.0, fontWeight: FontWeight.w800 ),
                ),
              subtitle: Text("In case of an outbreak in your community, protect yourself and others:"),
              trailing: Icon(Icons.info, color: Colors.black26,),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(takeActionDesc, style: textStyleDesc,),
              ]
            )
          ),
          ListTile(
              title: Text("Take the following steps to help protect your children during an outbreak", 
                  style: TextStyle(color: Colors.black, 
                  fontSize: 18.0, fontWeight: FontWeight.w800 ),
                ),
              trailing: Icon(Icons.info, color: Colors.black26,),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(stepsChildren, style: textStyleDesc,),
              ]
            )
          ),
        ]
      )
    );
  }
}