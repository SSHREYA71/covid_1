import 'package:flutter/material.dart';
class Dont extends StatefulWidget {
  @override
  _DontState createState() => _DontState();
}

class _DontState extends State<Dont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DON'Ts",
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
                      image: AssetImage('assets/dont1.jpg'),
                      height:150.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height:5.0),
                    Text(
                      "Don't Panic",
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
                    image: AssetImage('assets/dont2.jpg'),
                    height:140.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Avoid Touching your Face',
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
                    image: AssetImage('assets/dont3.jpg'),
                    height:145.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    "Don't Travel unless necessary",
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
                    image: AssetImage('assets/dont4.jpg'),
                    height:140.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    "Don't overstock Essentials",
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
                    image: AssetImage('assets/dont5.jpg'),
                    height:140.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    "Don't go to Crowded places",
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
                    image: AssetImage('assets/dont6.jpg'),
                    height:150.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    "Don't Believe everything you see on the Internet",
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
                    image: AssetImage('assets/dont7.jpg'),
                    height:140.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    "Don't ignore Covid-19 Guidelines",
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
                    image: AssetImage('assets/dont8.jpg'),
                    height:140.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    'Avoid stepping out without Face Mask',
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
                    image: AssetImage('assets/dont9.jpg'),
                    height:140.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    "Don't seek Alternative Treatments",
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
                    image: AssetImage('assets/dont10.jpg'),
                    height:130.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height:5.0),
                  Text(
                    "Don't Harass/Humiliate your neighbours if they are found Covid-19 positive",
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