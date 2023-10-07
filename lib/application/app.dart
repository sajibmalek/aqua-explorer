import 'package:aqua_explorer/presentation/ui/screens/background_history.dart';
import 'package:aqua_explorer/presentation/ui/screens/global_water_cycle.dart';
import 'package:aqua_explorer/presentation/ui/screens/home_screens.dart';
import 'package:aqua_explorer/presentation/ui/screens/selector_screen.dart';
import 'package:aqua_explorer/presentation/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AquaExplorer extends StatelessWidget {
  const AquaExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        title: "Aqua Explorer",
        debugShowCheckedModeBanner: false,
        home:SelectorScreen() ,
    );
  }
}
