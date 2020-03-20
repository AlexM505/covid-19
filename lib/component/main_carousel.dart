import 'package:flutter/material.dart';
import 'package:coronaviruscovid19/model/Carousel_Image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<CarouselImage>> banners;
class MainCarousel extends StatefulWidget {
  @override
  _MainCarouselState createState() => _MainCarouselState();
}

class _MainCarouselState extends State<MainCarousel> {
  Future<List<CarouselImage>> banners = getchImages();

  @override
  Widget build(BuildContext context) {
    return Center(
          child: FutureBuilder<List<CarouselImage>>(
            future: banners,
            builder: (context,snapshot){
              if(snapshot.hasData){
                return CarouselSlider(
                    autoPlay: true,
                    height: 200.0,
                    items: snapshot.data.map((i){
                      return Builder(
                        builder: (BuildContext context){
                          return Card(
                            child: Stack(
                              children: <Widget>[
                                SizedBox.expand(
                                  child: Material(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(i.link,fit: BoxFit.fill),
                                  ),
                                ),
                                SizedBox.expand(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [Colors.transparent, Colors.black54],
                                            begin: Alignment.center,
                                            end: Alignment.bottomCenter)),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(i.title,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w700)),
                                          Padding(padding: EdgeInsets.only(bottom: 8.0)),
                                          Text(i.description,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Colors.white)),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    }).toList()
                );
              }

              return CircularProgressIndicator();

            },
          ),
        );

  }
}