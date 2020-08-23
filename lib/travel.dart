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
        title:Text("Travel History",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, letterSpacing: 1.0,
        )),
        backgroundColor: Colors.indigo[400],
        centerTitle: true,
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
                          'DISCLAIMER!!!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
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
              SizedBox(height: 70,),
              FlatButton(
                color: Colors.green[100],
                child: Text("Start My Journey"
                    ,
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Column(
                          children: [
                            Image.asset('assets/social_distancing.png'),
                            Text('Remember to wear a mask!')
                          ],
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/travel_map");
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 12,),
              FlatButton(
                color: Colors.red[100],
                child: Text("End Journey"
                    ,
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Column(
                          children: [
                            Image.asset('assets/social_distancing.png'),
                            Text("Your Travel History is saved & is safe with us!\nWe will now stop accessing your location data.")
                          ],
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/account");
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}