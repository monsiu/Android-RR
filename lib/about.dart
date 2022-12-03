// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:android/custom_roms.dart';
import 'package:android/custom_rec.dart';
import 'package:android/home.dart';
import 'package:android/instructions.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  
 static const appTitle = 'About Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: const MyAboutPage(title: appTitle),
      theme: ThemeData(
             brightness: Brightness.light,
        /* light theme settings */
          canvasColor: Colors.white,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity
      ),
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

class MyAboutPage extends StatelessWidget {
  const MyAboutPage({super.key, required this.title});

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
                    Icon(Icons.mail,
                    color: Color(0xFF7ed957),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Message Us")
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: [
                    Icon(Icons.share,
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
      body: const Center(
        child: Text('My Page!'),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
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
                        SizedBox(height: 24) ,
                        Container(
                          
                          child:
         Text('Android RR is not affiliated with Google. Monsiu and Custom ROM and Recoveries creators and maintainers are NOT liable for any damages done to your device in any shape or form. You ARE responsible for what you do.', textAlign: TextAlign.left,),
                              
                             
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
    );
  }
}

