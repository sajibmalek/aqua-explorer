import 'package:aqua_explorer/presentation/ui/screens/game_level/level1_info.dart';
import 'package:aqua_explorer/presentation/ui/utility/AppImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Level1 extends StatelessWidget {
  const Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text("Level 1"),
      ),
      body: Stack(

        children:[
          Image.asset(AppImages.level1_bg,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,),

          Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(AppImages.level1,width: 230,height: 230,),
          const SizedBox(height: 6,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 400,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.amberAccent,)
                  ),
                  child: Text("Ocean Origins - The Deep Dive",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300
                  ),),
                ),
              ),

              const SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SizedBox(
                  width: 100,
                  height: 45,
                  child: TextButton(onPressed: () {
                     Get.to(const Level1Info());
                  },style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ), child: const Text("Start Now",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),),),
                ),
              )
            ],
          ),
        ),
        ]
      ),
    );
  }
}
