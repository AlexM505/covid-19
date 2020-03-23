import 'package:coronaviruscovid19/pages/InfoView.dart';
import 'package:coronaviruscovid19/pages/home_page.dart';
import 'pages/map_page.dart';
import 'pages/configuration_page.dart';
import 'pages/information_page.dart';
import 'package:flutter/material.dart';
import 'package:coronaviruscovid19/component/bottom_navy_bar.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyApp(),
        'info': (BuildContext context) => InformationPage(),
        'map': (BuildContext context) => MapPage(),
        'config': (BuildContext context) => ConfigurationPage(),
        'InfoView':  (BuildContext context) => InfoView(
          title: 'hola bro',
          content: 'me la pelas',
          imgLocal: false,
          imgPath: 'https://concepto.de/wp-content/uploads/2013/08/salud-OMS-e1551914081412.jpg',
        )
      },
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    InformationPage(),
    MapPage(),
    ConfigurationPage()
  ];
  final textStyle = TextStyle(fontSize:36.0, letterSpacing: -1,fontWeight: FontWeight.bold, color: Color(0xff505050),fontFamily: "Calibre-Semibold");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: Colors.white,
          //body: HomePage()
          body: _children[_currentIndex], 
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: _currentIndex,
            showElevation: true,
            itemCornerRadius: 8,
            curve: Curves.easeInBack,
            onItemSelected: (index) => setState(() {
              _currentIndex = index;
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
      ),
    );
  }
}
