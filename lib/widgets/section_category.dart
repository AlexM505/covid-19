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
          return SectionCard(
              categoryName: _categories[index].categoryName,
              imagePath: _categories[index].imagePath
          );
        },
      ),
    );
  }
}