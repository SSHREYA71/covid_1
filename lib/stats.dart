import 'dart:convert';
import 'package:covid_1/currentState.dart';
import 'package:covid_1/mostAffectedState.dart';
import 'package:covid_1/stateWiseData.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covid_1/colEx.dart';

class Statistic extends StatefulWidget {
  @override
  _StatisticState createState() => _StatisticState();
}


class _StatisticState extends State<Statistic> {
  Map totalData;
  fetchTotalData() async {
    http.Response response = await http.get(
        "https://api.covidindiatracker.com/total.json");
    setState(() {
      totalData = json.decode(response.body);
    });
  }
  List stateData;
  fetchStateData() async{
    http.Response response = await http.get("https://api.covidindiatracker.com/state_data.json");
    setState(() {
      stateData = json.decode(response.body);
    });
  }

  @override
  void initState(){
    fetchTotalData();
    fetchStateData();
    super.initState()  ;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200] ,
        appBar: AppBar(
          centerTitle: true,
          title:Text("COVID-19 Statistics",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.0),),
          elevation:0,
          backgroundColor: Colors.indigo[400],
        ),
        body: stateData==null?Center(child:CircularProgressIndicator()):

        SingleChildScrollView(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal:10),
                child: Row(

                  children:<Widget> [
                    Image.asset("assets/indiaFlag.jpeg",height:50,width:50),
                    SizedBox(width:5),
                    Text("Total Cases",style:TextStyle(fontSize: 22,
                        fontWeight:FontWeight.bold,color:Colors.black)),
                    SizedBox(width:90),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:(context)=>StateInfo()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[300],
                              borderRadius: BorderRadius.circular(60)),
                          padding: EdgeInsets.all(10),
                          child: Text("All States",style:TextStyle(color:Colors.grey[900]
                              ,fontSize: 22,fontWeight:FontWeight.bold))),
                    ),

                  ],
                ),
              ),
              totalData==null?CircularProgressIndicator:CurrentStatePanel(totalData:totalData),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child:
                Text("Most Affected States",style:TextStyle(fontSize: 24,fontWeight:FontWeight.bold,
                    color:Colors.black)),
              ),
              SizedBox(height:10),
              stateData==null?Container(): MostAffected(stateData: stateData,)
            ]
        )
        )

    );

  }
}
