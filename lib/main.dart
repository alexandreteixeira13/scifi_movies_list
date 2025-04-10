import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'Movie.dart';
import 'dart:convert';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAPP createState() => MainAPP();
}

class MainAPP extends State<MainApp> {
  List<Movie> movie = List.empty();
  int total = 0;

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/movies.json');
    Iterable data = await json.decode(response);
    movie = List<Movie>.from(data.map((model) => Movie.fromJson(model)));
    total = movie.length;

    setState(() {
      movie = List<Movie>.from(data.map((model) => Movie.fromJson(model)));
      total = movie.length;
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'filmes',
      home: Scaffold(
        body: Scrollbar(
            child: Center(
              child: Padding(padding: const EdgeInsets.all(40), 
          child: ListView.builder(
                  itemCount: total,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(20),
                        
                            ),
                            color: const Color.fromARGB(255, 205, 216, 230),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Image.network(movie[index].poster),
                                  Gap(20),
                                  Text(
                                    movie[index].title,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Gap(4),
                                  Text(
                                    movie[index].descricao,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Gap(10),
                                  Text(
                                    movie[index].genre,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Gap(10),
                                  Text(
                                    movie[index].director,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    textAlign: TextAlign.justify,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  })
            
          ),
        )),
      )
    );
  }
}
