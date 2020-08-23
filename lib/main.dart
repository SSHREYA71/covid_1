import 'dart:io';
import 'package:covid_1/map_page.dart';
import 'package:covid_1/onBoardingScreens.dart';
import 'package:covid_1/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'login.dart';
import 'package:covid_1/account.dart';
import 'package:covid_1/info.dart';
import 'package:covid_1/do.dart';
import 'package:covid_1/dont.dart';
import 'package:covid_1/faq.dart';
import 'package:covid_1/myths.dart';

void main(){
  runApp(MaterialApp(
    routes: {
      "/": (context) => OnBoardingScreens(),
      "/auth": (context) => LoginPage(),
      "/home": (context) => Home(),
      "/travel_map": (context) => MapPage(),
      "/account": (context) => Account(),
      "/info" : (context) => Info(),
      "/do": (context) => Do(),
      "/dont": (context) => Dont(),
      "/myths": (context) => Myths(),
      "/faq": (context) => Faq(),

    },

    //routes: <String, WidgetBuilder>{
    //  '/login': (BuildContext context) => new LoginPage()
    //},
    debugShowCheckedModeBanner: false,
  ));
}


