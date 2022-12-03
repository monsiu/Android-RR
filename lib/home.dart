// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:android/updatedialog.dart';
import 'package:new_version/new_version.dart';
import 'package:flutter/material.dart';
import 'package:android/custom_roms.dart';
import 'package:android/instructions.dart';
import 'package:android/custom_rec.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const appTitle = 'Home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: const MyHomePage(title: appTitle),
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

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
                      width: 10,
                    ),
                    Text("Message Us")
                    
                  ],
                  
                ),
                                                        onTap: () => launch(
                    'mailto:contactmonsiu@gmail.com?subject=QUERY%20AND%20SUGGESTIONS%20'),
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
      body: ListView(children: <Widget>[
        Container(
            padding: EdgeInsets.only(top: 19),
            child: Text(
              'WELCOME',
              style: TextStyle(
                color: Color(0xFF7ed957),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )),
        Center(
            child: Text(
          'TO',
          style: TextStyle(
            color: Color(0xFF7ed957),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        )),
        Center(
            child: Text(
          'ANDROID RR 🙂',
          style: TextStyle(
            color: Color(0xFF7ed957),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        )),
        Container(
          padding: EdgeInsets.only(top: 19),
          child: Text(
            'Android RR is the Home of Roms and Recoveries(RR).',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 19,
            right: 19,
            left: 19,
          ),
          child: Text(
            'We List all ROMS and Recoveries for almost every devices and for every obscure device we offer guidance on what to do as I feel this is a hurdle an enthusiastic Flasher may encounter.',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }
}
