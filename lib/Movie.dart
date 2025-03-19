
import 'package:scifi_movies_list/Diretor.dart';
import 'package:scifi_movies_list/Genero.dart';

class Movie {

  late String name;
  late String descricao;
  late String poster;
  late Diretor director;
  late Genero genre;
  Movie(){
    name = '';
    descricao = '';
    poster = '';
    director = '' as Diretor;
    genre = '' as Genero;
  } 

  Movie.v(this.name, this.descricao, this.poster, this.director, this.genre);


  Movie.fromJson(Map<String, dynamic> json)
  : name = json['Name'] as String,
  descricao = json['Description'] as String,
  poster = json['Poster']  as String,
  genre = json['Genre'] as Genero,
  director = json['Director'] as Diretor;

  Map<String, dynamic> toJson() => {

    'Name' : name,
    'Description' : descricao,
    'Poster' : poster,
    'Genre' : genre,
    'Director' : director,

  };


}