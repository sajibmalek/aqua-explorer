import 'dart:html';

import 'package:aqua_explorer/presentation/ui/screens/background_history.dart';
import 'package:aqua_explorer/presentation/ui/utility/AppImage.dart';
import 'package:aqua_explorer/presentation/ui/utility/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height,
              child:
              Image.asset(
               AppImages.bg_img,
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
              ),
            ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 10,top: 25,bottom: 5),
                  child: Text(
                    AppString.home_heading,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
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
               const Spacer(),
               Padding(
                 padding: const EdgeInsets.only(bottom: 32.0),
                 child: SizedBox(
                   width: 120,
                   height: 45,
                   child: TextButton(onPressed: () {
                     Get.to(const BackGroundHistory());
                   },style: TextButton.styleFrom(
                     backgroundColor: Colors.amber,

                   ), child: const Text("Next",style: TextStyle(
                       color: Colors.white,
                       fontSize: 30
                   ),),),
                 ),
               )
            ],
          ),

        ]
        ),
    );

  }
}
