import 'dart:io';
import 'package:covid_1/map_page.dart';
import 'package:covid_1/onBoardingScreens.dart';
import 'package:covid_1/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'login.dart';

void main(){
  runApp(MaterialApp(
    routes: {
      "/": (context) => OnBoardingScreens(),
      "/auth": (context) => LoginPage(),
      "/home": (context) => Home(),
      "/travel_map": (context) => MapPage()

    },

    //routes: <String, WidgetBuilder>{
    //  '/login': (BuildContext context) => new LoginPage()
    //},
    debugShowCheckedModeBanner: false,
  ));
}


