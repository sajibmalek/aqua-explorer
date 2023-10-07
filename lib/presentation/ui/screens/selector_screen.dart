import 'package:aqua_explorer/presentation/ui/screens/journey.dart';
import 'package:aqua_explorer/presentation/ui/screens/game_level/nasa_mission_screen.dart';
import 'package:aqua_explorer/presentation/ui/utility/AppImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectorScreen extends StatefulWidget {
  const SelectorScreen({super.key});

  @override
  State<SelectorScreen> createState() => _SelectorScreenState();
}

class _SelectorScreenState extends State<SelectorScreen> {
  bool charIndex=false;
  bool charIndex1=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body:Center(
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Center(child: const Text("Select your Character Name")),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10,right: 10,bottom: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                    label: Text("Your name"),
                    border: OutlineInputBorder(
                    )

                ),

              ),
            ),
            // TextButton(onPressed: () {
            //
            // },style: TextButton.styleFrom(
            //   backgroundColor: Colors.amber,
            //
            // ), child: const Text("Confirm",style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 18
            // ),),),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber
                      )
                    ),
                    height: 160,
                      width: 130,
                      child: Image.asset(
                    AppImages.char1,
                    height: 160,
                    width: 130,
                        fit: BoxFit.cover,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.amber
                          )
                      ),
                      height: 160,
                      width: 130,
                      child: Image.asset(
                        AppImages.char2,
                        height: 160,
                        width: 130,
                        fit: BoxFit.cover,
                      )),
                ),
               // Image.asset(AppImages.char2,height: 150,width: 150,),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: SizedBox(
                    width: 70,
                    height: 30,
                    child: TextButton(onPressed: () {
                      charIndex1=false;
                      charIndex=true;
                      setState(() {
                      });

                     // Get.to(const NasaMissionScreen());
                    },style: TextButton.styleFrom(
                      backgroundColor: charIndex?Colors.blueAccent:Colors.amber,

                    ), child: const Text("Male",style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: SizedBox(
                    width: 80,
                    height: 30,
                    child: TextButton(onPressed: () {
                      if(charIndex){
                        charIndex=false;
                        // setState(() {
                        // });
                      }
                        charIndex1=true;
                        setState(() {
                        });

                    },style: TextButton.styleFrom(
                      backgroundColor: charIndex1?Colors.blueAccent:Colors.amber,

                    ), child: const Text("Female",style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),),),
                  ),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 80,bottom: 20.0),
              child: SizedBox(
                width: 80,
                height: 30,
                child: TextButton(onPressed: () {
                  Get.to(const JourneyScreen());
                },style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,

                ), child: const Text("Select",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
