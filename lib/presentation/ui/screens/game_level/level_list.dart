import 'package:aqua_explorer/presentation/ui/screens/game_level/level1.dart';
import 'package:aqua_explorer/presentation/ui/screens/game_level/level3.dart';
import 'package:aqua_explorer/presentation/ui/utility/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'level2.dart';

class LevelListScreen extends StatefulWidget {
  const LevelListScreen({super.key});

  @override
  State<LevelListScreen> createState() => _LevelListScreenState();
}

class _LevelListScreenState extends State<LevelListScreen> {
  List<String> list=[
    AppString.level1,
    AppString.level2,
    AppString.level3
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Leves"),
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
      body:Center(
        child: Column(
          children: [
            Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: (){
            Get.to(Level1());
          },
          child: Container(
            width: 400,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.amberAccent,)
            ),
            child: Text(list[0],style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.1
            ),),
          ),
        ),
    ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  Get.to(Level2());
                },
                child: Container(
                  width: 400,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.amberAccent,)
                  ),
                  child: Text(list[1],style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.1
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  Get.to(Level3());
                },
                child: Container(
                  width: 400,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.amberAccent,)
                  ),
                  child: Text(list[2],style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.1
                  ),),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
