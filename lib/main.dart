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
  //ignore: unused_field

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

  
}


