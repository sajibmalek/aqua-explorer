import 'package:aqua_explorer/presentation/ui/screens/home_screens.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late final Future<LottieComposition> _composition;

  void splash() {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (route) => false);
    });
  }

  @override
  void initState() {
    super.initState();
    splash();
    _composition = AssetLottie('assets/anim/world_water.json').load();

  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LottieComposition>(
      future: _composition,
      builder: (context, snapshot) {
        var composition = snapshot.data;
        if (composition != null) {
          return Center(child: SizedBox(
              width: 200,
              height: 200,
              child: Lottie(composition: composition)));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
