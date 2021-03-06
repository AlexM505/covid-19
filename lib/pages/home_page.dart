import 'dart:ffi';

import 'package:coronaviruscovid19/component/main_carousel.dart';
import 'package:flutter/material.dart';
import 'package:coronaviruscovid19/component/bottom_navy_bar.dart';
import 'package:coronaviruscovid19/model/Review.dart';
import 'dart:math';


var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = images.length - 1.0;

  int currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0,top: 36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Tittle",
                    style: TextStyle(
                        color: Color(0xff413F73),
                        fontFamily: "Calibre-Semibold",
                        fontSize: 40.0,
                        letterSpacing: 0.5
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Color(0xff413F73),
                      size: 32.0,
                    ),
                    onPressed: () {Navigator.pushNamed(context, 'config');},
                  )
                ],
              ),
            ),
            Stack(
              children: <Widget>[
               MainCarousel(),
                Positioned.fill(
                  child: PageView.builder(
                    itemCount: images.length,
                    controller: controller,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return Container();
                    },
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0,top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Sections",
                    style: TextStyle(
                        color: Color(0xff413F73),
                        fontFamily: "Calibre-Semibold",
                        fontSize: 36.0,
                        letterSpacing: -1
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: ActionChip(
                        backgroundColor: Colors.green.shade300,
                        label: Text('Symptoms',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white
                            )
                        ),
                        onPressed: () {
                          print("Pressed Symptoms ActionChip");
                        }
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right:8.0),
                    child: ActionChip(
                        backgroundColor: Colors.blue.shade300,
                        label: Text('Prevention',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white
                            )
                        ),
                        onPressed: () {
                          print("Pressed Prevention ActionChip");
                        }
                    ),
                  ),
                  ActionChip(
                      backgroundColor: Colors.orange.shade300,
                      label: Text('Origin',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white
                          )
                      ),
                      onPressed: () {
                        print("Pressed Origin ActionChip");
                      }
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0,bottom: 20.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: ActionChip(
                        backgroundColor: Colors.deepPurple.shade300,
                        label: Text('Evolution of the disease',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white
                            )
                        ),
                        onPressed: () {
                          print("Pressed Evolution ActionChip");
                        }
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right:8.0),
                    child: ActionChip(
                        backgroundColor: Colors.red.shade300,
                        label: Text('Affected areas',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white
                            )
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'map');
                        }
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) {setState(() {
          currentIndex = index;
        });
          if (index == 3){
            Navigator.pushNamed(context, 'config');
          }
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Users'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text(
              'Messages test for mes teset test test ',
            ),
            activeColor: Colors.pink,
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



class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < images.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: 12 + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.black54, boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(images[i], fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 16.0),
                              child: Text(title[i],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36.0,
                                      fontFamily: "Calibre-Semibold"
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, bottom: 16.0),
                              child: Text(desc[i],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 36.0,
                                    fontFamily: "Calibre-Semibold"
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}
