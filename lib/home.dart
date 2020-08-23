import 'package:flutter/material.dart';
import 'package:covid_1/stats.dart';
import 'package:covid_1/travel.dart';
import 'package:covid_1/account.dart';
import 'package:covid_1/info.dart';

class Home extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex =0;
  final List _screens = [
    Statistic(),
    Info(),
    Travel(),
    Account(),
  ];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[200],

        body: _screens[_currentIndex],
        extendBody: true,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap : (index) => setState(()=> _currentIndex = index),
          type:BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[200],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          elevation:0.0,
          items: [Icons.insert_chart,Icons.info,Icons.history,Icons.person]
              .asMap()
              .map((key,value)=>MapEntry(
            key,
            BottomNavigationBarItem(
              title: Text(""),
              icon: Container(
                padding: const EdgeInsets.symmetric(
                  vertical:6,
                  horizontal:16,
                ),
                decoration:BoxDecoration(
                  color: _currentIndex == key?
                  Colors.blue[600]
                      :Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:Icon(value),
              ),
            ),



          ))
              .values
              .toList(),

        ));


  }
}