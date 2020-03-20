import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong/latlong.dart';

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("affected zones"),
      ),
      body: FlutterMap(
        options: new MapOptions(
          center: new LatLng(12.8654156, -85.2072296),
          zoom: 2.0,
        ),
        layers: [
          new TileLayerOptions(
            urlTemplate: "https://api.tiles.mapbox.com/v4/"
                "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoiYnJhbmRvbmpva2VyMTciLCJhIjoiY2s3cDhhcTVzMDE1aDN2cWsxcWRzMXF4eCJ9.bV4RsOQJH8ldDZj8dUbUSg',
              'id': 'mapbox.streets',
            },
          ),
          new MarkerLayerOptions(
            markers: [
              new Marker(
                width: 80.0,
                height: 80.0,
                point: new LatLng(12.8654156, -85.2072296),
                builder: (ctx) => new Container(
                  child: new FlutterLogo(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
