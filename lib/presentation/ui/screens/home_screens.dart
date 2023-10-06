import 'dart:html';

import 'package:aqua_explorer/presentation/ui/utility/strings.dart';
import 'package:aqua_explorer/presentation/ui/utility/urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeRight,
    //   DeviceOrientation.landscapeLeft,
    // ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
        Image.network(
          "https://img.freepik.com/free-vector/scuba-diving_1308-11657.jpg?w=740&t=st=1696515958~exp=1696516558~hmac=6be023f8910692620489beec1c8eb149216273bea93aa3e65516c342a98db2da",
          width:100,
          height: 300,
          fit: BoxFit.fill,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  AppString.home_heading,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  AppString.home_Sub_heading,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 120,
              height: 45,
              child: TextButton(onPressed: () {}, child: const Text("Next",style: TextStyle(
                color: Colors.white,
                fontSize: 30
              ),),style: TextButton.styleFrom(
                backgroundColor: Colors.amber,

              ),),
            )
          ],
        ),
      ]
      ),
    );
  }
}
