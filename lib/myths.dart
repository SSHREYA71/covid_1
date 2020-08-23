import 'package:flutter/material.dart';

class Myths extends StatefulWidget {
  @override
  _MythsState createState() => _MythsState();
}

class _MythsState extends State<Myths> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Myths',
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
      ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          Container(
            child: Card(
              elevation:10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/my1.jfif'),
                    height: 120.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Vitamin-C can cure Covid-19 \nInfection',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[600],
                    ),
                  )

                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation:10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/my2.png'),
                    height: 120.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Onset of summers means decline \nin Covid-19 Infections',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[600],
                    ),
                  )

                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation:10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/my3.jpg'),
                    height: 120.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    "If you can hold your breath for \n10 seconds without Discomfort,\nyou don't have Covid-19 Infection",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[600],
                    ),
                  )

                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation:10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/my4.jfif'),
                    height: 120.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Eating meat can cause Covid-19 \nInfection',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[600],
                    ),
                  )

                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation:10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/my5.jpg'),
                    height: 120.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Only old aged people are at Higher Risk \nof getting infected by Covid-19 Virus',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[600],
                    ),
                  )

                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation:10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/my6.jpg'),
                    height: 120.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Drinking alcohol can kill Covid-19 \nVirus',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[600],
                    ),
                  )

                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation:10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/my7.jpeg'),
                    height: 120.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Everyone with COVID-19 Infection dies',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[600],
                    ),
                  )

                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation:10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/my8.jpg'),
                    height: 120.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Spraying Alcohol or Chlorine all over the \nbody can kill Covid-19 Virus',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[600],
                    ),
                  )

                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation:10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/my9.jpg'),
                    height: 120.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Taking hot bath can prevent Covid-19 \nVirus',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[600],
                    ),
                  )

                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation:10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/my10.jfif'),
                    height: 120.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Vaccines against Pneumonia can \nprotect you against COVID-19',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[600],
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}