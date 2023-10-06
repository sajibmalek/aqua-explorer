import 'package:aqua_explorer/presentation/ui/screens/home_screens.dart';
import 'package:aqua_explorer/presentation/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AquaExplorer extends StatelessWidget {
  const AquaExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Auqa",
      debugShowCheckedModeBanner: false,
      home:HomeScreen() ,
    );
  }
}
