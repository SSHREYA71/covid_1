import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => new _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email, password, passwordConfirm;
  final formKey = GlobalKey<FormState>();
  bool saveAttempted = false;

  void _createUser({String email, String pw}) {
    _auth.createUserWithEmailAndPassword(email: email, password: pw).then((authResult) => {
      Navigator.pushReplacementNamed(context, '/home'),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: new Scaffold(
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
                            'Sign Up',
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
                        TextFormField(autovalidate: saveAttempted,
                          onChanged: (textValue){
                          setState(() {
                            email = textValue;
                  });
                  },
                          validator: (emailValue) {
                          if (emailValue.isEmpty){
                            return 'This field is mandatory';
                          }
                          return null;
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
                        TextFormField(autovalidate: saveAttempted,
                          onChanged: (textValue){
                          setState(() {
                            password = textValue;
                          });
                        },
                          validator: (pwValue){
                          if (pwValue.isEmpty){
                            return 'This field is mandatory';
                          }
                          if (pwValue.length < 8){
                            return 'Password must be 8 characters';
                          }
                          return null;
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
                        SizedBox(height: 20.0),
                        TextFormField(autovalidate: saveAttempted,
                          onChanged: (textValue){
                          setState(() {
                            passwordConfirm = textValue;
                          });
                        },
                          validator: (pwConfValue){
                          if (pwConfValue != password){
                            return 'Passwords must match';
                          }
                          return null;
                        },
                          decoration: InputDecoration(
                              labelText: 'RE-ENTER PASSWORD',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              )
                          ),
                          obscureText: true,
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
                                setState(() {
                                  saveAttempted = true;
                                });
                                if (formKey.currentState.validate()){
                                  formKey.currentState.save();
                                  _createUser(email: email, pw: password);
                                }
                              },
                              child: Center(
                                child: Text(
                                  'SIGN UP',
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
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Center(
                                child: Text('Go Back',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
