import 'package:aqua_explorer/presentation/ui/screens/game_level/level2_info.dart';
import 'package:aqua_explorer/presentation/ui/utility/AppImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Level2MoreInfo extends StatefulWidget {
  const Level2MoreInfo({super.key});

  @override
  State<Level2MoreInfo> createState() => _Level2MoreInfoState();

}

class _Level2MoreInfoState extends State<Level2MoreInfo> {
  final Uri _url = Uri.parse('swot.jpl.nasa.gov/mission/swath-visualizer/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 2"),
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

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(AppImages.pic1_l2m,height: 350,),
                    SizedBox( width: 10,),
                    Image.asset(AppImages.time,height: 350,),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SizedBox(
                  width: 120,
                  height: 45,
                  child: TextButton(onPressed: () {
                    Get.to(const Level2Info());
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
        ),
      )
    );
  }
}
