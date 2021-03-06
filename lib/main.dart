import 'package:flutter/material.dart';
import 'package:here_sdk/core.dart';
import 'package:here_sdk/mapview.dart';

void main() {
  SdkContext.init(IsolateOrigin.main);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HERE SDK for Flutter - Hello Map!',
      home: HereMap(onMapCreated: _onMapCreated),
    );
  }

  void _onMapCreated(HereMapController hereMapController) {
    hereMapController.mapScene.loadSceneForMapScheme(MapScheme.normalDay,
            (MapError error) {
          if (error != null) {
            print('Map scene not loaded. MapError: ${error.toString()}');
            return;
          }

          const double distanceToEarthInMeters = 8000;
          hereMapController.camera.lookAtPointWithDistance(
              GeoCoordinates(52.530932, 13.384915), distanceToEarthInMeters);
        });
  }
}
