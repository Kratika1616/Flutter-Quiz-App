import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleLearning extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text("Simple Learning",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
        ),
        body:
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/icons/bg.png'),fit: BoxFit.fill),
          ),
          child:
        ListView( children: <Widget>[Expanded(
          child: Container(
              height: 180,
              width: 100,
              alignment: Alignment.topCenter,
              child: Center(
                child: Column(
                    children: <Widget>[
                      Expanded(child:
                      ListTile(
                        title: Text(
                          '            What is Flutter',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),

                        subtitle: Text(
                          'Flutter is an open source framework to create high quality, high performance mobile applications across mobile operating systems - Android and iOS. It provides a simple, powerful, efficient and easy to understand SDK to write mobile application in Google’s own language, Dart.',
                          maxLines: 500,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                          ),),
                      ),
                      ),
                    ]),)),),
          Container(
            height: 40,
            width: 40,
          ),
          Container(
            child:
            ListTile(
              title: Text(
                  '      Introduction to Dart',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  )
              ),
              subtitle: Text(
                'Dart is an open-source general-purpose programming language. It is originally developed by Google. Dart is an object-oriented language with C-style syntax. It supports programming concepts like interfaces, classes, unlike other programming languages Dart doesn’t support arrays.',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            ),

          ),

          Container(
            height: 40,
            width: 40,
          ),
          Container(
            child:
            ListTile(
              title: Text(
                  '          What is Java?',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  )),
              subtitle: Text(
                'Java is a programming language and a platform. Java is a high level, robust, object-oriented and secure programming language.',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            ),
          ),
          Container(
            height: 40,
            width: 40,
          ),
          Container(
            child:
            ListTile(
              title: Text(
                  '         History of Java',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  )),
              subtitle:
              Text(
                'Java was developed by Sun Microsystems (which is now the subsidiary of Oracle) in the year 1995. James Gosling is known as the father of Java. Before Java, its name was Oak. Since Oak was already a registered company, so James Gosling and his team changed the name from Oak to Java.',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            )
            ,
          ),
          Container(
            height: 40,
            width: 40,
          ),
          Container(
            child:
            ListTile(
              title: Text(
                '        What is Python ?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,

                ),
              ),

              subtitle:
              Text(
                'Python is a general purpose, dynamic, high-level, and interpreted programming language. It supports Object Oriented programming approach to develop applications. It is simple and easy to learn and provides lots of high-level data structures.',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            )
            ,
          ),
          Container(
            height: 40,
            width: 40,
          ),
          Container(
            child:
            ListTile(
              title: Text(
                  '       History of Python',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  )),
              subtitle: Text('Python was invented by Guido van Rossum in 1991 at CWI in Netherland. The idea of Python programming language has taken from the ABC programming language or we can say that ABC is a predecessor of Python language.',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            ),
          ),
          Container(
            height: 20,
            width: 20,
          ),
        ]
        ),
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        )
    );

  }
}