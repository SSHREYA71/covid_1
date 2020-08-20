import 'package:flutter/cupertino.dart';
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
class MostAffected extends StatelessWidget {

  final List stateData;

  const MostAffected({Key key, this.stateData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:stateData==null?Center(child:CircularProgressIndicator()):
      ListView.builder( shrinkWrap: true,
          itemBuilder: (context,index)
          {
            return Container(

              margin : EdgeInsets.symmetric(horizontal:10,vertical:10),
              decoration: BoxDecoration(
                  boxShadow:[ BoxShadow(color:Colors.white,blurRadius: 10
                      ,offset: Offset(0,10))]),
              child :Row(
                children: [

                  Text(stateData[index]["state"],style:TextStyle(fontWeight:FontWeight.bold,fontSize: 17,
                      color:Colors.grey[900])),
                  SizedBox(width:5),
                  Text("Confirmed Cases :" +
                      stateData[index]["confirmed"].toString(),style:TextStyle(color:Colors.red[500],
                      fontWeight:FontWeight.bold,fontSize: 17))
                ],
              )
              ,
            );
          },

          itemCount: 5),
    );
  }
}