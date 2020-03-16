import 'package:flutter/material.dart';
import '../widgets/pie_chart_corona.dart';
import '../widgets/section_category.dart';

class InformationPage extends StatefulWidget{
     @override
  _InformationPageState createState() => _InformationPageState();
  }
  
class _InformationPageState extends State<InformationPage>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          title: Text("Information", style: TextStyle(color: Colors.black87),),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SectionCategory(),
              PieChartCorona()
            ]
          )
        )
      );
  }
}

