import 'package:flutter/material.dart';


class Do extends StatefulWidget {
  @override
  _DoState createState() => _DoState();
}

class _DoState extends State<Do> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DOs',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0
          ),
        ),
        backgroundColor: Colors.indigo[400],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body:
      GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: Card(
                elevation: 10.0,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/do1.jpg'),
                      height:125.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height:5.0),
                    Text(
                      'Frequently wash your Hands with Soap and Water or always Sanitize your Hands',
                      style:TextStyle(
                        fontSize: 15.0,
                        color: Colors.indigo[600],
                      ),
                    ),
                  ],
                )
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/do2.jpg'),
                    height:140.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Do wear Mask and Gloves before going out ',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.indigo[600],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: Card(
              elevation: 10.0,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/do3.jpg'),
                    height:130.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Eat nutritious food and drinks lots of Water',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.indigo[600],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: Card(
              elevation: 10.0,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/do4.jpg'),
                    height:140.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Always maintain Social Distancing',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.indigo[600],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: Card(
              elevation: 10.0,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/do5.jpg'),
                    height:135.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Cover your mouth while Coughing or Sneezing',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.indigo[600],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: Card(
              elevation: 10.0,
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/do6.jpg'),
                    height:135.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Quarantine yourself if you come in contact with Covid-19 positive person',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.indigo[600],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: Card(
              elevation: 10.0,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/do7.jpg'),
                    height:130.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Consult Doctors immediately if you are having any symptoms Of COVID-19',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.indigo[600],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: Card(
              elevation: 10.0,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/do8.jpg'),
                    height:120.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Boost the Morale of Doctors,Policemen and others who are working for society in the pandemic',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.indigo[600],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: Card(
              elevation: 10.0,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/do9.jpg'),
                    height:130.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Work from Home unless any urgent work is there outside',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.indigo[600],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: Card(
              elevation: 10.0,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/do10.jpg'),
                    height:150.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Obey COVID-19 Guidelines ',
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.indigo[600],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}