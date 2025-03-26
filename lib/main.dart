import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Movie.dart';
import 'dart:convert';


void main() {
  runApp(const MaterialApp(title: "App", home: MainApp(),));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAPP createState() => MainAPP();

}
 
class MainAPP extends State<MainApp>{

  List<Movie>movies = List.empty();
  int total = 0;

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/movies.json');
      Iterable data = await json.decode(response);
    movies = List<Movie>.from(data.map((model) => Movie.fromJson(model)));
    total = movies.length;
    setState(() {
      movies;
      total;
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        extendBody: true,
        body: Center(
          child: Padding(padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
          child: Column(mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Text('$total')

          ],),)
        ),
      ),
    );
  }
}


