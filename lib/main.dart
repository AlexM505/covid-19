import 'package:coronaviruscovid19/pages/home_page.dart';
import 'package:coronaviruscovid19/pages/map_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      // home: MyApp(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyApp(),
        'map': (BuildContext context) => MapView()
      },
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(backgroundColor: Colors.white, body: HomePage()),
    );
  }
}
