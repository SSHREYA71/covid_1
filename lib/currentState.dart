import 'package:flutter/material.dart';

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
class CurrentStatePanel extends StatelessWidget {
  final Map totalData;

  const CurrentStatePanel({Key key, this.totalData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      Container(
          child: GridView(
              shrinkWrap: true ,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate : SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,childAspectRatio:2),
              children :[
                StatusPanel(
                  title: "CONFIRMED",
                  count:   totalData['confirmed'].toString(),
                  panelcolor:Colors.red[100],
                  textcolor:Colors.red,
                ),
                StatusPanel(
                  title: "ACTIVE",
                  count:   totalData['active'].toString(),
                  panelcolor:Colors.blue[100],
                  textcolor:Colors.blue,

                ), StatusPanel(
                  title: "RECOVERED",
                  count:   totalData['recovered'].toString(),
                  panelcolor:Colors.green[100],
                  textcolor:Colors.green,
                ), StatusPanel(
                  title: "DEATHS",
                  count:   totalData['deaths'].toString(),
                  panelcolor:Colors.grey[400],
                  textcolor:Colors.grey[900],
                )
              ]

          )
      );


  }
}

class StatusPanel extends StatelessWidget{
  final String title;
  final String count;
  final Color panelcolor;
  final Color textcolor;

  const StatusPanel({Key key, this.title, this.count,this.panelcolor,this.textcolor}) : super(key: key);
  @override
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            color: panelcolor,
            borderRadius: BorderRadius.circular(15)
        ),

        margin: EdgeInsets.all(10),
        height: 80, width: width/2 ,

        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [Text(title,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 16
              ,color:textcolor))
            ,Text(count,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 20,
                color:textcolor))],
        )
    );

  }

}