import 'package:aqua_explorer/presentation/ui/utility/AppImage.dart';
import 'package:flutter/material.dart';

class GameMap extends StatelessWidget {
  const GameMap({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Stack(
        children:[ Padding(
          padding: const EdgeInsets.all(18.0),
          child: Image.asset(
            AppImages.game_map_bg,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        ]
      ),
    );
  }
}
