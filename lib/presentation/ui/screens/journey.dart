import 'package:aqua_explorer/presentation/ui/screens/global_water_cycle.dart';
import 'package:aqua_explorer/presentation/ui/utility/AppImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'game_level/nasa_mission_screen.dart';

class JourneyScreen extends StatefulWidget {
  const JourneyScreen({super.key});

  @override
  State<JourneyScreen> createState() => _JourneyScreenState();
}

class _JourneyScreenState extends State<JourneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Start to Explore"),
        leading: const BackButton(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.cancel_outlined,size: 30,)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children:[ Column(
            children: [
          Image.asset(AppImages.bg_img,width: double.infinity,
            height:600,fit: BoxFit.cover,),
            ],
          ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Center(
                    child: Text(
                      "Start to Explore",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30.0,right: 10),
                child: SizedBox(
                  width: 120,
                  height: 45,
                  child: TextButton(onPressed: () {
                    Get.to(const GlobalWaterCycle());
                  },style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,

                  ), child: const Text("Next",style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                  ),),),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
