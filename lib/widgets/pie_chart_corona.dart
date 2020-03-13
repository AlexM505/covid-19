import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';

class PieChartCorona extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => PieChartState();
}

const blue = Color(0xff0293ee);
const green = Color(0xff37CC27);
const red = Color(0xffEA0100);
const white = Color(0xffffffff);

class PieChartState extends State{
  int touchedIndex;
  @override
  Widget build(BuildContext context) {

    return AspectRatio(
      aspectRatio: 1.3,
      child: Card(
        color: white,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                      pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                        setState(() {
                          if (pieTouchResponse.touchInput is FlLongPressEnd ||
                              pieTouchResponse.touchInput is FlPanEnd) {
                            touchedIndex = -1;
                          } else {
                            touchedIndex = pieTouchResponse.touchedSectionIndex;
                          }
                        });
                      }),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 2.0,
                      centerSpaceRadius: 30,
                      sections: showingSections()),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Indicator(
                  color: blue,
                  text: 'Cases',
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: green,
                  text: 'Recovered',
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: red,
                  text: 'Deaths',
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                SizedBox(
                  height: 18,
                ),
              ],
            ),
            const SizedBox(
              width: 28,
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 14;
      final double radius = isTouched ? 80 : 65;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: blue,
            value: 63,
            title: '129,854',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: white),
          );
        case 1:
          return PieChartSectionData(
            color: green,
            value: 26,
            title: '68,672',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: white),
          );
        case 2:
          return PieChartSectionData(
            color: red,
            value: 11,
            title: '4,751',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: white),
          );
        default:
          return null;
      }
    });
  }
}