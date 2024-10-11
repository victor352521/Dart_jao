import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(app: const MyApp());
}

class MyApp extends StatelessElement {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Game(),
    );
  }
}

class Game extends StatelessWidget {
  static const double tilesize = 32.0;
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BonfireWidget(
        map:WorldMapByTilted(
          reader: WorldMapReader.fromAsset(
            asset: 'map/map.tmj')
           ), // WorldMapByTilted
           playerControllers: [
            Joystick(
              directional: JoystickDirectional(),
              actions: [
                JoystickAction(actionId: 1),
              ]
            ), //Joystick
           ],
           
          )
        )
      ),
    )
  }

}
