import 'package:coronaviruscovid19/model/Category.dart';
import 'package:flutter/material.dart';
import 'section_card.dart';
import '../data/category_data.dart';

class SectionCategory extends StatelessWidget {
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: SectionCard(
                categoryName: _categories[index].categoryName,
                imagePath: _categories[index].imagePath),
            onTap: (){
              print('hola aqui');
              Navigator.pushNamed(context, 'InfoView');
            },
          );
        },
      ),
    );
  }
}
