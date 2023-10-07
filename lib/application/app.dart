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
        home:SplashScreen() ,
    );
  }
}
