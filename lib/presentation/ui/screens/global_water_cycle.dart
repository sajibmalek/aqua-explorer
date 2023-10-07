import 'package:aqua_explorer/presentation/ui/screens/nasa_mission_screen.dart';
import 'package:aqua_explorer/presentation/ui/screens/selector_screen.dart';
import 'package:aqua_explorer/presentation/ui/utility/AppImage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GlobalWaterCycle extends StatefulWidget {
  const GlobalWaterCycle({super.key});

  @override
  State<GlobalWaterCycle> createState() => _GlobalWaterCycleState();
}

class _GlobalWaterCycleState extends State<GlobalWaterCycle> {
  final ValueNotifier<int> _selectedPage=ValueNotifier(0);

  List<dynamic> imglist=[
    AppImages.sliderImg1,
    AppImages.sliderImg2,
    AppImages.sliderImg4,
    AppImages.sliderImg5
  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20,),
          const Text(
            "Water Cycle Process",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          CarouselSlider(
            options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 3),
                onPageChanged: (int page, _) {
                  _selectedPage.value = page;
                }),
            items: [0,1,2,3,].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Image.asset(imglist[i],width:double.infinity,height: 100,)),
                  );
                },
              );
            }).toList(),
          ),
          ValueListenableBuilder(
              valueListenable: _selectedPage,
              builder: (context, value, _) {
                List<Widget> list = [];
                for (int i = 0; i < imglist.length; i++) {
                  list.add(Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: value == i ? Colors.blue : null,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 4),
                  ));
                }
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: list,
                );
              }),
          //const SizedBox(height: 20,),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 150,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppImages.game_map,width: 150,height: 150,),
                  const SizedBox(width: 20,),
                  Image.asset(AppImages.nasa_mission,width: 150,height: 150,),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: SizedBox(
              width: 120,
              height: 45,
              child: TextButton(onPressed: () {
                Get.to(const NasaMissionScreen());
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
    );
  }
}
