import 'package:coronaviruscovid19/component/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'section_card.dart';
import '../model/category.dart';
import '../data/category_data.dart';

class SectionCategory extends StatelessWidget{

  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height / 2.08,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return new GestureDetector(
            child: SectionCard(
                categoryName: _categories[index].categoryName,
                imagePath: _categories[index].imagePath
            ),
            onTap: () {
              onCardTapped(context, index);
            }
          );
        },
      ),
    );
  }

  onCardTapped(BuildContext context, int position) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondRoute()),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}