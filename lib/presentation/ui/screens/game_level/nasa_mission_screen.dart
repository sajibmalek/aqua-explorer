import 'package:aqua_explorer/presentation/ui/utility/AppImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NasaMissionScreen extends StatefulWidget {
  const NasaMissionScreen({super.key});

  @override
  State<NasaMissionScreen> createState() => _NasaMissionScreenState();
}

class _NasaMissionScreenState extends State<NasaMissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nasa Mission"),
        leading: const BackButton(),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Expanded(
            flex: 1,
            child: Row(
              mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    AppImages.gpm,
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      width: 100,
                      height: 45,
                      child: TextButton(onPressed: () {
                       // Get.to(const NasaMissionScreen());
                      },style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ), child: const Text("GPM Mission",style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppImages.gpm,
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      width: 100,
                      height: 45,
                      child: TextButton(onPressed: () {
                        // Get.to(const NasaMissionScreen());
                      },style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ), child: const Text("GPM Mission",style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),),
                    ),
                  )
                ],
              )
            ],
        ),
          ),
        ]
      ),
    );
  }
}
