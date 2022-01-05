import 'package:flutter/material.dart';
import 'package:quiz_app/screens/welcome/reg.dart';
import 'login.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: Text('Home Chat'),
      //),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/icons/bg.png'),fit: BoxFit.fill),
        ),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 100.0,
                    child: Image.asset("assets/icons/quiz.png")
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                ),
                Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: MaterialButton(
                    minWidth: 200,
                    height: 20,
                    child: Text('Register Now'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyReg()));
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: MaterialButton(
                    minWidth: 200,
                    height: 40,
                    child: Text('Login'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyLogin()));
                    },
                  ),
                ),
                SizedBox(
                  height: 290,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
