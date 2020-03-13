import 'package:coronaviruscovid19/component/main_carousel.dart';
import 'package:flutter/material.dart';
import 'package:coronaviruscovid19/component/bottom_navy_bar.dart';
import 'package:coronaviruscovid19/model/Review.dart';
import '../widgets/section_category.dart';
import '../widgets/home_top_info.dart';
import '../widgets/pie_chart_corona.dart';
import '../widgets/incubation_period.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = images.length - 1.0;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
//            HomeTopInfo(),
            IncubationPeriod(),
            Stack(
              children: <Widget>[
               MainCarousel(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0,top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Sections",
                    style: TextStyle(
                        color: Color(0xff413F73),
                        fontFamily: "Calibre-Semibold",
                        fontSize: 30.0,
                        letterSpacing: -1
                    ),
                  ),
                ],
              ),
            ),
            SectionCategory(),
            PieChartCorona()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.update),
            title: Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.insert_chart),
            title: Text('Info'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.map),
            title: Text('Map',),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}