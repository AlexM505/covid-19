import 'package:coronaviruscovid19/component/main_carousel.dart';
import 'package:flutter/material.dart';
import 'package:coronaviruscovid19/model/Review.dart';
import '../widgets/section_category.dart';
import '../widgets/pie_chart_corona.dart';
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
        title: Text("Covid-19", style: TextStyle(color: Colors.black87,),),
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
           
          ],
        ),
      ),
    );
  }
}