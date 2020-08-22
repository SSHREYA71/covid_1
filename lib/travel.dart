import 'package:flutter/material.dart';
import 'package:covid_1/map_page.dart';


class Travel extends StatefulWidget {
  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel'),
        backgroundColor: Color(0xFF7777FF),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 140.0, 20.0, 20.0),
                    child: Column(
                      children: [
                        Text(
                          'Disclaimer',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'As soon as you click on start my journey button we will start recording your travel history data using your mobile gps services!! This will all be saved in our protected server and will be made available to you and government agencies for further queries if you or anyone of you, your relatives, or friends come in contact with the COVID-19 virus.',
                          style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                    color: Colors.red[400],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/covCompLogo.png'),
                          )
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100,),
              FlatButton(
                color: Colors.green,
                child: Text('Start my journey'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Column(
                          children: [
                            Image.asset('assets/images/mask.png'),
                            Text('Remember to wear a mask!')
                          ],
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.pushNamed(context, "/travel_map");
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 15,),
              FlatButton(
                color: Colors.green,
                child: Text('End journey'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}