import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quiz_app/customer_sat.dart';
import 'package:quiz_app/screens/welcome/Simple%20Learning.dart';
import 'package:quiz_app/screens/welcome/flutter_level.dart';
import 'package:quiz_app/screens/welcome/home.dart';
import 'package:quiz_app/screens/welcome/java_level.dart';
import 'package:quiz_app/screens/welcome/python_level.dart';
import 'package:quiz_app/screens/welcome/spacecrafts.dart';



class Subjects extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: new Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child:Container(
            color: Colors.black,
        child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Center(
                    child: Image.asset('assets/icons/quiz.png')),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/icons/bg.png'),fit: BoxFit.fill),
                ),
              ),
              new ListTile(
                tileColor: Colors.black,
                title: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.my_library_books), onPressed: null),
                    Text('MCQ', style: TextStyle(fontFamily: 'Lobster'))
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Subjects()));
                },
              ),
              new ListTile(
                tileColor: Colors.black,
                title: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.menu_book), onPressed: null),
                    Text('Simple Learning', style: TextStyle(fontFamily: 'Lobster'))
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => SimpleLearning()));
                },
              ),
              new ListTile(
                tileColor: Colors.black,
                title: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.school), onPressed: null),
                    Text('ISRO Knowledge Section', style: TextStyle(fontFamily: 'Lobster'))
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Spacecrafts()));
                },
              ),
              new ListTile(
                tileColor: Colors.black,
                title: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.logout), onPressed: null),
                    Text('Logout', style: TextStyle(fontFamily: 'Lobster'))
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => MyHome()));
                },
              ),
            ],
          ),
        ),),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text("Select Subject From Following",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 150),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/icons/bg.png'),fit: BoxFit.fill),
          ),
          child:
          new StaggeredGridView.count(
            padding: EdgeInsets.only(left: 0,top:0,right: 0),
            crossAxisCount: 4,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
            children: <Widget>[
              Card(child: InkWell(child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/icons/bg.png'),fit: BoxFit.fill),
                ),
                child:
                Wrap(children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20.0, top: 10.0,bottom: 0.9),
                        child: FlatButton(
                          child: Text("Flutter",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),),
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>
                              new Flevel(),),);
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) =>
                            new Flevel(),),);
                        },// handle your image tap here
                        child: Image.asset(
                          'assets/icons/fluttter.png',
                          width: 184.0,
                          height: 100.0,
                        ),
                      ),
                    ],
                  ),],
                ),),),),
              Card(child: InkWell(child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/icons/bg.png'),fit: BoxFit.fill),
                ),
                child:
                Wrap(children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20.0, top: 80.0,bottom: 0.9),
                        child: FlatButton(
                          child: Text("Java",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),),
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>
                              new Jlevel()),);
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) =>
                            new Jlevel(),),);
                        },// handle your image tap here
                        child: Image.asset(
                          'assets/icons/java.png',
                          width: 184.0,
                          height: 100.0,
                        ),
                      ),
                    ],
                  ),],
                ),),),),
              Card(child: InkWell(child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/icons/bg.png'),fit: BoxFit.fill),
                ),
                child:
                Wrap(children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20.0, top: 10.0,bottom: 0.9),
                        child: FlatButton(
                          child: Text("Python",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),),
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>
                              new Plevel(),),);
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) =>
                            new Plevel(),),);
                        },// handle your image tap here
                        child: Image.asset(
                          'assets/icons/python.png',
                          width: 184.0,
                          height: 100.0,
                        ),
                      ),
                    ],
                  ),],
                ),),),),
            ],
            staggeredTiles: [
              //StaggeredTile.extent(4, 50),
              StaggeredTile.extent(2, 200),
              StaggeredTile.extent(2, 400),
              StaggeredTile.extent(2, 200),
              // StaggeredTile.extent(1, 300),
              // StaggeredTile.extent(3, 300),
            ],
          ),
        )
    );
  }
}