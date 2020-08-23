import 'package:flutter/material.dart';
import 'package:covid_1/colEx.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}
class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COVID-19 Updates',
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
      backgroundColor: Colors.grey[300],
      body:
      ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                child: Card(
                    elevation: 10.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/undraw_faq_rjoy.png'),
                          height: 130.0,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 5.0),
                        OutlineButton(
                          shape: StadiumBorder(),
                          onPressed: () {
                            Navigator.pushNamed(context, '/faq');
                          },
                          borderSide: BorderSide(color: '473F97'.toColor()),
                          splashColor: '473F97'.toColor(),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'FAQs',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),

                        )

                      ],


                    )
                ),

              ),
              Container(
                child: Card(
                    elevation: 10.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/unnamed1.jpg'),
                          height: 130.0,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 5.0,),
                        OutlineButton(
                          shape: StadiumBorder(),
                          onPressed: () {
                            Navigator.pushNamed(context, '/do');
                          },
                          borderSide: BorderSide(color: '473F97'.toColor()),
                          splashColor: '473F97'.toColor(),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'DOs',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),

                        )

                      ],


                    )
                ),

              ),
              Container(
                child: Card(
                    elevation: 10.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/unnamed2.jpg'),
                          height: 130.0,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 5.0,),
                        OutlineButton(
                          shape: StadiumBorder(),
                          onPressed: () {
                            Navigator.pushNamed(context, '/dont');
                          },
                          borderSide: BorderSide(color: '473F97'.toColor()),
                          splashColor: '473F97'.toColor(),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'DONTs',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),

                        )

                      ],


                    )
                ),

              ),
              Container(
                child: Card(
                    elevation: 10.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/undraw_Notify_re_65on.png'),
                          height: 130.0,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 5.0,),
                        OutlineButton(
                          shape: StadiumBorder(),
                          onPressed: () {
                            Navigator.pushNamed(context, '/myths');
                          },
                          borderSide: BorderSide(color: '473F97'.toColor()),
                          splashColor: '473F97'.toColor(),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Myths',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),

                        )

                      ],


                    )
                ),

              )
            ],
          ),

          SizedBox(height: 20.0),
          Symptoms(),
          SizedBox(height: 20.0),
          preventions(),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Symptoms() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('SYMPTOMS'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: listofsymptoms(),
          ),
        ],
      ),
    );
  }

  Widget labelContainer(String labelVal) {
    return Container(
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            labelVal,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'More',
                style: TextStyle(color: Colors.indigoAccent[100],
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.indigoAccent[100],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget listofsymptoms() {
    return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            imageSection(
                'assets/symp1.png',
                'High Fever/Headache'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/symp2.png',
                'Muscle Pain'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/symp3.png',
                'Sudden Loss of Taste'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/symp4.png',
                ' Cough'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/symp5.png',
                'Sore Throat'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/symp6.png',
                'Difficulty in Breathing'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/symp7.png',
                'Chills'),
          ],
        ));
  }

  Widget imageSection(String imageVal, String appVal) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageVal),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          appVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(
          height: 10.0,
        ),

      ],
    );
  }

  Widget preventions() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('PREVENTIONS'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: listofpreventions(),
          ),
        ],
      ),
    );
  }

  Widget listofpreventions() {
    return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            imageSection(
                'assets/prev1.jpg',
                'Wear a Mask'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/prev2.jpg',
                'Wash/Sanitise Hands'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/prev3.jpg',
                'Avoid Contact with Others'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/prev4.jpg',
                'Cover your Cough/Sneeze'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/prev5.jpg',
                'Stay Home'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'assets/prev6.jpg',
                'Do not Travel'),
          ],
        ));
  }
}