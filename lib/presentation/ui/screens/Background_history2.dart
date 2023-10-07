import 'package:aqua_explorer/presentation/ui/screens/global_water_cycle.dart';
import 'package:aqua_explorer/presentation/ui/screens/selector_screen.dart';
import 'package:aqua_explorer/presentation/ui/utility/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackGroundHistory2 extends StatefulWidget {
  const BackGroundHistory2({super.key});

  @override
  State<BackGroundHistory2> createState() => _BackGroundHistory2State();
}

class _BackGroundHistory2State extends State<BackGroundHistory2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Background History"),
        leading: const BackButton(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)),
                  child: Center(
                      child: Text(
                        "Background History",
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                      )),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    // height:  MediaQuery.of(context).size.height,
                    child: Text(
                      AppString.bg_info4,
                      style: TextStyle(
                          letterSpacing: 0.1,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 45,
                        child: TextButton(onPressed: () {
                          Get.to(const SelectorScreen());
                        },style: TextButton.styleFrom(
                          backgroundColor: Colors.amber,

                        ), child: const Text("Skip",style: TextStyle(
                            color: Colors.white,
                            fontSize: 30
                        ),),),
                      ),
                      const Spacer(),

                      SizedBox(
                        width: 120,
                        height: 45,
                        child: TextButton(onPressed: () {
                          Get.to(const SelectorScreen());
                        },style: TextButton.styleFrom(
                          backgroundColor: Colors.amber,

                        ), child: const Text("Next",style: TextStyle(
                            color: Colors.white,
                            fontSize: 30
                        ),),),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
