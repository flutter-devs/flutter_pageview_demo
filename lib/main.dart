import 'dart:async';

import 'package:page_view_demo/Constant/Constant.dart';
import 'package:page_view_demo/Screens/HomeScreen.dart';
import 'package:page_view_demo/Screens/SplashScreen.dart';


import 'package:flutter/material.dart';


main() {

  runApp(new MaterialApp(
    title: 'Page View Demo',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
        accentColor: Colors.black
        ,
        primaryColor: Colors.black,
        primaryColorDark: Colors.black

    ),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      HOME_SCREEN: (BuildContext context) => new HomeScreen(),
      ANIMATED_SPLASH: (BuildContext context) => new SplashScreen()
    },
  ));
}


