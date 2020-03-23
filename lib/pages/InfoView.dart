import 'package:flutter/material.dart';

class InfoView extends StatelessWidget {
  InfoView(
      {@required this.title,
      @required this.content,
      @required this.imgPath,
      @required this.imgLocal});

  final String title;
  final String content;
  final String imgPath;
  final bool imgLocal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Align(
                child: FadeInImage(
                  image: this.imgLocal
                      ? AssetImage(this.imgPath)
                      : NetworkImage(this.imgPath),
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
                this.title,
                style: TextStyle(fontSize: 25.0, fontFamily: 'roboto'),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                this.content,
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
