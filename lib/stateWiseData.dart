import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StateInfo extends StatefulWidget {
  @override
  _StateInfoState createState() => _StateInfoState();
}

class _StateInfoState extends State<StateInfo> {
  List stateData;
  fetchStateData() async {
    http.Response response = await http.get(
        "https://api.covidindiatracker.com/state_data.json");
    setState(() {
      stateData = json.decode(response.body);
    });
  }
  @override
  void initState() {
    fetchStateData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:Text("Statewise Information",style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        ),
        body:stateData==null?Center(child:CircularProgressIndicator()): ListView.builder (
          itemBuilder:( context,index){
            return Container(
                height:100,
                margin:EdgeInsets.symmetric(horizontal:10,vertical:10),
                decoration: BoxDecoration(
                    color:Colors.grey[200],
                    boxShadow:[ BoxShadow(color:Colors.white,blurRadius: 10
                        ,offset: Offset(0,10))
                    ]),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(stateData[index]['state'],style:TextStyle(fontWeight:FontWeight.bold,
                                fontSize: 18))
                          ],
                        )
                    ),
                    Expanded(child:Container(
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("CONFIRMED :"+stateData[index]['confirmed'].toString(),style:
                            TextStyle(
                                color:Colors.red[600],fontWeight: FontWeight.bold),

                            ),
                            Text("ACTIVE :"+stateData[index]['active'].toString(),style:
                            TextStyle(
                                color:Colors.blue[700],fontWeight: FontWeight.bold  )),
                            Text("RECOVERED :"+stateData[index]['recovered'].toString(),style:
                            TextStyle(
                                color:Colors.green,fontWeight: FontWeight.bold)),
                            Text("DEATHS :"+stateData[index]['deaths'].toString(),style:
                            TextStyle(
                                color:Colors.grey[900],fontWeight: FontWeight.bold)),

                          ],
                        )
                    )),
                  ],
                )
            );
          },
          itemCount: stateData==null ? 0 : stateData.length,
        ));
  }
}