import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/screens/mainpage.dart';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://isro.vercel.app/api/centres'));

  if (response.statusCode == 200) {
    print(response.body);
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final String name;
  final String Place;
  final String State;



  Album({
    this.name,
    this.Place,
    this.State,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      name: json['centres'][0]['name'],
      Place: json['centres'][0]['Place'],
      State: json['centres'][0]['State'],
    );
  }
}


class Centers extends StatefulWidget {
  const Centers({Key key}) : super(key: key);

  @override
  _CentersState createState() => _CentersState();
}

class _CentersState extends State<Centers> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            FlatButton(onPressed:() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()
                ),);
            },
              child: Text("Next",style: TextStyle(color: Colors.white),),),
          ],
          title: Text("ISRO Knowledge Section",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/icons/bg.png'),fit: BoxFit.fill),
          ),
          child:Center(
            child: FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot) {

                if (snapshot.hasData) {
                  return Container(
                    padding: EdgeInsets.only(top: 250),
                    child:Center(child:
                    Column(
                        children: [
                          Text("Centers:",style: TextStyle(fontSize: 30,color: Colors.white),),
                          SizedBox(height: 10,),
                          Text(snapshot.data.name,style: TextStyle(fontSize: 25,color: Colors.white),),
                          Text(snapshot.data.Place,style: TextStyle(fontSize: 25,color: Colors.white),),
                          Text(snapshot.data.State,style: TextStyle(fontSize: 25,color: Colors.white),),
                        ]
                    )
                    ),);
                }
                else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                if (snapshot.hasData) {

                }
                else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
    );
  }
}