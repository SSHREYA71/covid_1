import 'dart:io';

import 'package:flutter/material.dart';
import 'package:covid_1/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'login.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    //routes: <String, WidgetBuilder>{
    //  '/login': (BuildContext context) => new LoginPage()
    //},
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<SliderModel> slides = new List<SliderModel>();
  int currentIndex = 0;
  PageController pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    slides = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: pageController,
        itemCount: slides.length,
          onPageChanged: (val){
          setState(() {
            currentIndex = val;
          });
          },
          itemBuilder: (context, index){
          return SliderTile(
            imageAssetPath: slides[index].getImageAssetPath(),
            title: slides[index].getTitle(),
            desc: slides[index].getDesc(),
          );
          }),
      bottomSheet: currentIndex != slides.length - 1 ? Container(
        height: Platform.isAndroid ? 50:50 ,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                pageController.animateToPage(slides.length - 1, duration: Duration(milliseconds: 400), curve: Curves.linearToEaseOut);
              },
              child: Text('SKIP'),
            ),
            Row(
              children: [
                for(int i = 0; i <  slides.length; i++) currentIndex == i ? pageIndexIndicator(true) : pageIndexIndicator(false)
              ],
            ),
            InkWell(
              onTap: (){
                pageController.animateToPage(currentIndex + 1, duration: Duration(milliseconds: 400), curve: Curves.linearToEaseOut);
              },
              child: Text('NEXT'),
            ),
          ],
        ),
      ) : Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width ,
        height: Platform.isAndroid ? 50:50,
        color: '7777FF'.toColor(),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Text(
            'GET STARTED NOW',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ),
    );
  }
}

class SliderTile extends StatelessWidget {

  String imageAssetPath, title, desc;
  SliderTile({this.imageAssetPath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageAssetPath),
          SizedBox(height: 20.0),
          Text(title, style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
          SizedBox(height: 12.0),
          Text(desc, textAlign: TextAlign.center, style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16
          )),
        ],
      ),
    );
  }
}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
