import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong/latlong.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Affected zones", style: TextStyle(color: Colors.black87),),
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
