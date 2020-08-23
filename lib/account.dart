import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200] ,
      appBar: AppBar(
        centerTitle: true,
        title:Text("My Account",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, letterSpacing: 1.0,
        )),
        backgroundColor:Colors.indigo[400],
        elevation:0,
      ),

      body:Column(
        children: [
          Container(
            height:280,
            margin:EdgeInsets.symmetric(horizontal:10,vertical:10),
            decoration: BoxDecoration(
                color:Colors.grey[200],
                boxShadow:[ BoxShadow(color:Colors.white,blurRadius: 10
                    ,offset: Offset(0,10))]),

            child: Padding(

                padding: EdgeInsets.symmetric(vertical:5),
                child:
                Column(

                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child:

                      CircleAvatar(radius:80,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/profile.jpeg")),
                    ),
                    SizedBox(height:5),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Icon(
                              Icons.mail),

                          Text("viroinrahul@test.com",
                              style:TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.blue
                              )
                          )
                        ]
                    ),
                    SizedBox(height:10),
                    RaisedButton(onPressed:
                        (){
                      Navigator.pushReplacementNamed(context, "/auth");
                        },
                        child:Text("SignOut",
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,)),
                        color: Colors.red[100]
                    ),
                  ],
                )
            ),
          ),
          RaisedButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, "/auth");
            },
            child:Text("Login with Another Account"
                ,
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,)),
            color: Colors.green[100]

            ,
          ),
          SizedBox(height:20),
          Container(
            height:200,
            child:Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text("About Covid Companion"
                      ,style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color:Colors.blue
                      ),

                    ),
                  ),
                  SizedBox(height:10),
                  Center(
                    child: Text("Covid Companion is an app that helps in keeping safe from COVID-19. In the current scenario prevention is the only cure. Even Scientists say that the best way to prevent the pandemic is, 'not "
                        "getting infected and not infecting others'.\nAnd that is what the app helps you do.",
                        style:TextStyle(
                            fontWeight: FontWeight.bold

                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}