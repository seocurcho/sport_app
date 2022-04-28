import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/ui/mainpage/items/Homepage.dart';
import 'package:sport_app/ui/mainpage/items/bodyweight.dart';
import 'package:sport_app/ui/mainpage/items/item.dart';
import 'package:sport_app/ui/mainpage/items/no_time.dart';

import 'package:sport_app/ui/navpages/main_page.dart';
import 'package:sport_app/ui/page_s/login_screen.dart';
import 'package:sport_app/ui/page_s/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sport_app/ui/page_s/widget/Utils.dart';

import 'api/purchase_api.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PurchaseApi.init();
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scaffoldMessengerKey: Utils.messengerKey,
        navigatorKey: navigatorKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.pink,
        ),
        home: FutureBuilder(
          future: _fbApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('you have an error! ${snapshot.error.toString()}');
              return Text('Something went wrong');
            } else if (snapshot.hasData) {
              return SplashScreen(
                title: "app",
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )

        //SplashScreen(
        //title: "app",
        //),
        );
  }
}
