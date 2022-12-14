// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:android/twrp.dart';
import 'package:android/redwolfrec.dart';
import 'package:android/pitchblackrec.dart';
import 'package:android/skyhawkrec.dart';
import 'package:android/custom_roms.dart';
import 'package:android/orangefoxrec.dart';

import 'package:android/crdroid.dart';
import 'package:android/pixelexperience.dart';
import 'package:android/dotos.dart';
import 'package:android/arrowos.dart';
import 'package:android/bliss.dart';
import 'package:android/evolutionx.dart';
import 'package:android/paranoidandroid.dart';
import 'package:android/potatoaosp.dart';
import 'package:android/lineage.dart';
import 'package:android/havoc.dart';
import 'package:flutter/material.dart';
import 'package:android/home.dart';
import 'package:android/instructions.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomrecPage extends StatelessWidget {
  const CustomrecPage({Key? key}) : super(key: key);

  static const appTitle = 'Custom Recoveries';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: const MycustomrecsPage(title: appTitle),
      theme: ThemeData(
          brightness: Brightness.light,
          /* light theme settings */
          canvasColor: Colors.white,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.system,
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
    );
  }
}

class MycustomrecsPage extends StatelessWidget {
  const MycustomrecsPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
          actions: [
            PopupMenuButton<int>(
              itemBuilder: (context) => [
                 PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Color(0xFF7ed957),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text("Message Us")
                    ],
                  ),
   onTap: () => launch ( 'mailto:contactmonsiu@gmail.com?subject=QUERY%20AND%20SUGGESTIONS%20'),
                                                                            ),

                
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Color(0xFF7ed957),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Share the App")
                    ],
                  ),
                                                                        
                ),
                
              ],
              offset: Offset(0, 55),
              elevation: 8,
            ),
          ],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xFF7ed957),
                    image: DecorationImage(
                        image: AssetImage('images/splash.jpg'),
                        fit: BoxFit.cover)),
                child: null,
              ),
              ListTile(
                leading: const Icon(
                  Icons.house,
                  size: 18.0,
                  semanticLabel: 'Home Page',
                ),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.phone_android,
                  size: 18.0,
                  semanticLabel: 'Custom Roms',
                ),
                title: const Text('Custom Roms'),
                onTap: () {
                  Navigator.pop(context);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomromsPage()));
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.restore,
                  size: 18.0,
                  semanticLabel: 'Custom Recoveries',
                ),
                title: const Text('Custom Recoveries'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomrecPage()));
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.file_copy,
                  size: 18.0,
                  semanticLabel: 'Instructions and info',
                ),
                title: const Text('Instructions'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InstructionsPage()));
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                },
              ),
              ListTile(
                  leading: const Icon(
                    Icons.info,
                    size: 18.0,
                    semanticLabel: 'Instructions and info',
                  ),
                  title: const Text('About'),
                  onTap: () {
                    Navigator.pop(context);
                    AboutDialog;
                    showAboutDialog(
                        context: context,
                        applicationIcon: (Image.asset(
                          'images/splash_icon.png',
                          width: 50,
                        )),
                        applicationVersion: "v1.0",
                        applicationName: "Android RR",
                        applicationLegalese: '\u{a9} 2022 Monsiu Tech',
                        children: <Widget>[
                          SizedBox(height: 24),
                          Container(
                            child: Text(
                              'Android RR is not affiliated with Google. Monsiu and Custom ROM and Recoveries creators and maintainers are NOT liable for any damages done to your device in any shape or form. You ARE responsible for what you do.',
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
              padding: const EdgeInsets.only(top: 12.0),),
                        Container(
                          
                        child: InkWell(
              child: Text('TERMS AND CONDITIONS', style: TextStyle(color: Colors.blue),),
              //onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
          ),

                        ),
                           Padding(
              padding: const EdgeInsets.only(top: 12.0),),
                            Container(child: InkWell(
              child:  Text('PRIVACY POLICY', style: TextStyle(color: Colors.blue),),
              //onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
          ),)
                      ]);
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                }),
            ],
          ),
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: SizedBox(
                height: 450.0,
                child: Card(
                  elevation: 2.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TwrpPage(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          CachedNetworkImage(
                            imageUrl:
                                "https://i0.wp.com/www.androidsage.com/wp-content/uploads/2021/01/TWRP-recovery.jpg",
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: Text(
                              'Team Win Recovery Project (TWRP)',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 19,
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Team Win Recovery Project is an open-source software custom recovery image for Android-based devices. It supports a widest range of Devices in the Custom Recovery space',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: SizedBox(
                height: 400,
                child: Card(
                  elevation: 2.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RedwolfrecPage(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          CachedNetworkImage(
                            imageUrl:
                                "https://forum.xda-developers.com/proxy.php?image=https%3A%2F%2Fpreview.ibb.co%2FdEEWNk%2F1495640672222.png&hash=39f616ef3fe8296072c24e0f4585d3c9",
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: Text(
                              'Red Wolf Recovery Project',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 19,
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Red Wolf Recovery is custom recovery based on TWRP source code, however some things are working here slightly different then you might expected. ???',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: SizedBox(
                height: 360.0,
                child: Card(
                  elevation: 2.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PitchblackrecPage(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          CachedNetworkImage(
                            imageUrl:
                                "https://techsphinx.com/wp-content/uploads/2020/09/PBRP.png",
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: Text(
                              'Pitch Black Recovery Project',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 19,
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Pitch Black Recovery is a fork of TWRP with many improvements to make your experience better. It\'s more flexible & easy to use.',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: SizedBox(
                height: 350.0,
                child: Card(
                  elevation: 2.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrangefoxrecPage(), //orange
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          CachedNetworkImage(
                            imageUrl:
                                "https://xiaomitools.com/wp-content/uploads/2020/04/of_forums_header_v2_hed_2-1024x432.jpg",
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: Text(
                              'Orange Fox Recovery Project',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 19,
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'OrangeFox Recovery is one of the most popular custom recoveries, with additional features, fixes and a host of supported devices.',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: SizedBox(
                height: 400.0,
                child: Card(
                  elevation: 2.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SkyhawkrecPage(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          CachedNetworkImage(
                            imageUrl:
                                "https://forum.xda-developers.com/proxy.php?image=https%3A%2F%2Fgithub.com%2FDNI9%2FSHRP_%2Fraw%2Fmaster%2Fimg%2Fshrp3_banner_xda.png&hash=64337414359ef1feb6f4de18c17c665b",
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: Text(
                              'Sky Hawk Recovery Project',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 19,
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'SHRP is inspired by mordern design to bring the newest design to the native TWRP. SHRP provides much more along side of it\'s rich UI experience. New dashboard makes it very easy to interact with TWRP.',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}
