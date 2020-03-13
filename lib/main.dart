
import 'package:coronaviruscovid19/model/Review.dart';
import 'package:coronaviruscovid19/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.white,
  ),
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final textStyle = TextStyle(fontSize:36.0, letterSpacing: -1,fontWeight: FontWeight.bold, color: Color(0xff505050),fontFamily: "Calibre-Semibold");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(title: Text("Covid-19",style: textStyle,),backgroundColor: Colors.white,elevation: 2.0,),
          body: HomePage()
      ),
    );
  }
}