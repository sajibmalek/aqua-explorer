import 'package:aqua_explorer/presentation/ui/utility/AppImage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Level2Info extends StatefulWidget {
  const Level2Info({super.key});

  @override
  State<Level2Info> createState() => _Level2InfoState();

}

class _Level2InfoState extends State<Level2Info> {
  final Uri _url = Uri.parse('https://climate.nasa.gov/interactives/climate-time-machine/');
  final Uri _url2 = Uri.parse('https://scijinks.gov/menu/satellites-and-technology/');


  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(_url2)) {
      throw Exception('Could not launch $_url2');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Precipitation Measurement"),
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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                    height: 300,
                  child: Image.asset(AppImages.gpm),
                ),
                  ElevatedButton(
                    onPressed: _launchUrl,
                    child: const Text('Climate Change Time Machine'),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Image.asset(AppImages.gpm),
                  ),
                  ElevatedButton(
                    onPressed: _launchUrl2,
                    child: Text('Temperature and Humidity'),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
