import 'package:flutter/material.dart';

class Review{

  Review({
    @required this.cases,
    @required this.deaths,
    @required this.recovered
  });

  final int cases;
  final int deaths;
  final int recovered;

}

List<String> images = [
  "assets/recovered.jpg",
  "assets/deaths.jpg",
  "assets/cases.jpg",
];

List<String> title = [
  "RECOVERED",
  "DEATHS",
  "CASES",
];

List<String> desc = [
  "80,000",
  "30,108",
  "102,300",
];