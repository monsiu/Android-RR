// ignore_for_file: prefer_const_constructors
import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final List<String> imgList = [
  
  'https://i.imgur.com/V2X7axB.png',

'https://i.imgur.com/mkgShJf.png',
  'https://i.imgur.com/ztoBNU5.png',
   'https://i.imgur.com/2EBiejQ.png',
  'https://i.imgur.com/aG2pHNt.png',
  'https://i.imgur.com/HiG8Iaj.jpeg',
  'https://i.imgur.com/5kv5t0F.png',
];

class DotosPage extends StatelessWidget {
  const DotosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dot OS'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(tag: 'img', child: Image.asset('images/dotos.png')),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text('Dot OS',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline)),
            )),
            SizedBox(
              height: 20.0,
            ),
            Center(
                child: Text(
              'DroidOnTime(DOT OS) is a custom Android firmware launched with an aim to provide Unique user interface and Optimum performance and it keeps in mind the balance between performance and battery life. DotOS is based on Google\'s Android Open Source Project with Hand-picked goodies, innovative ideas and creative things that are added in the rom to enhance user experience!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
              textAlign: TextAlign.center,
            )),
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:12.0),
                  child: Text(
'DotOS is based on Google\'s Android Open Source Project with Hand-picked goodies, innovative ideas and creative things that are added in the rom to enhance user experience!',              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
              textAlign: TextAlign.center,
            ),
                )),
                Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:73.0),
                  child: Text(
'Screenshots',              style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
                ),
                ),
                 CarouselImages(
  scaleFactor: 0.6,
  listImages: imgList,
      height: 700,    
  
  cachedNetworkImage: true,
  borderRadius: 20,  
   
),
         
            SizedBox(
              height: 200,
            ),  
             Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 73.0),
                child: Text(
                  'Download',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(top:73.0, bottom:73),
                child: ElevatedButton(
          child:
              Text(
                'Official Builds',
              
              ),
          onPressed: () async {
              String  url = 'https://www.droidontime.com/devices';
              if (await canLaunch(url)) {
                await launch(
                  url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true,
                  enableDomStorage: true,
                  webOnlyWindowName: '_self',
                );
                }else{
                  print("Not Supported");
                }
              }
                
          )),
            ),
              
            
          ],
        ),
      ),
    );
  }
}
