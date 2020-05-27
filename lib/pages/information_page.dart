import 'package:coronaviruscovid19/component/main_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/pie_chart_corona.dart';
import '../widgets/section_category.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: <Widget>[
                      PieChartCorona(),
                      SectionCategory(),
                    ],
                  ),
                ),
              ),
            );
          },
        )
      )
    );
  }
}
