import 'package:coronaviruscovid19/model/Category.dart';
import 'package:flutter/material.dart';

class InfoView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Content_Category contentCategory = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Align(
                child: FadeInImage(
                  image: contentCategory.imgLocal
                      ? AssetImage(contentCategory.imgPath)
                      : NetworkImage(contentCategory.imgPath),
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/images/no-image.jpg'),
                  width: 300.0,
                  height: 200.0,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                contentCategory.title,
                style: TextStyle(fontSize: 25.0, fontFamily: 'roboto'),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                contentCategory.content,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
