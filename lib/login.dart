import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email, password;

  void _signIn({String em, String pw}) {
    _auth.signInWithEmailAndPassword(email: em, password: pw).then((authResult) => {
      Navigator.pushReplacementNamed(context, '/home'),
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 290,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/background.png'),
                                fit: BoxFit.fill
                            ))
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
                    Container(
                      padding: EdgeInsets.fromLTRB(35.0, 120.0, 0.0, 0.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.white
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      onChanged: (textVal) {
                      setState(() {
                        email = textVal;
                      });
                    },
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          )
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      onChanged: (textVal) {
                      setState(() {
                        password = textVal;
                      });
                    },
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          )
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 10.0),
                      child: InkWell(
                        child: Text(
                          'forgot password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7777FF),
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Color(0xFF437F97),
                        color: Color(0xFF7777FF),
                        elevation: 7.0,
                        child: InkWell(
                          onTap: () {
                            _signIn(em: email, pw: password);
                          },
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF7777FF),
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: ImageIcon(AssetImage('assets/images/facebook.png')),
                            ),
                            SizedBox(width: 10.0,),
                            Center(
                              child: Text(
                                'Log in with Facebook',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF7777FF),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF7777FF),
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: ImageIcon(AssetImage('assets/images/google.png')),
                            ),
                            SizedBox(width: 10.0,),
                            Center(
                              child: Text(
                                'Log in with Google',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF7777FF),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('New to Covid Companion?'),
                  SizedBox(width: 5.0,),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xFF7777FF),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
