import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import '../mainpage.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var authc = FirebaseAuth.instance;

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: 1000,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/icons/bg.png'),fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 100.0,
                      child: Image.asset("assets/icons/quiz.png")
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      email = value;
                    },
                    autocorrect: false,
                    cursorColor: Colors.blue,
                    style: TextStyle(height: 1),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.cyan,
                      ),
                      hintText: 'Enter EmailID ',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    autocorrect: false,
                    cursorColor: Colors.blue,
                    style: TextStyle(height: 1),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Colors.cyan,
                      ),
                      hintText: 'Enter Password ',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Material(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: MaterialButton(
                      minWidth: 200,
                      height: 40,
                      child: Text('Login'),
                      onPressed: () async {
                        try {
                          var userSignin =
                          await authc.signInWithEmailAndPassword(
                              email: email, password: password);
                          print(userSignin);

                          if (userSignin != null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainPage()));
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
