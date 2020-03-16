import 'package:coronaviruscovid19/component/main_carousel.dart';
import 'package:flutter/material.dart';
import '../widgets/howspreads.dart';
import '../widgets/incubation_period.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset(
                 'assets/images/virus.png',
                  fit: BoxFit.contain,
                  height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0), 
                  child: Text("Covid-19", style: TextStyle(color: Colors.black87,),)
                  )
            ],
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            IncubationPeriod(),
            Stack(
              children: <Widget>[
               MainCarousel(),
              ],
            ),
            HowSpreads(),
          ],
        ),
      ),
    );
  }
}