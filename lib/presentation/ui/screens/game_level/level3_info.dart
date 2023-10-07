import 'package:aqua_explorer/presentation/ui/utility/AppImage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Level3Info extends StatefulWidget {
  const Level3Info({super.key});

  @override
  State<Level3Info> createState() => _Level3InfoState();

}

class _Level3InfoState extends State<Level3Info> {
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
        title: Text("SWOT Swath Visualizer"),
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
        child: Column(
          children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
              height: 300,
            child: Image.asset(AppImages.ar_view),
          ),
            ElevatedButton(
              onPressed: _launchUrl,
              child: Text('SWOT Swath Visualizer'),
            ),
          ],
        ),
      )
    );
  }
}
