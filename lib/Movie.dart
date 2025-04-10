
class Movie {

  late String title;
  late String descricao;
  late String poster;
  late String director;
  late String genre;
  Movie(){
    title = '';
    descricao = '';
    poster = '';
    director = '' ;
    genre = '';
  } 

  Movie.v(this.title, this.descricao, this.poster, this.director, this.genre);


  Movie.fromJson(Map<String, dynamic> json)
  : title = json['title'] as String,
  descricao = json['description'] as String,
  poster = json['poster']  as String,
  genre = json['genre'] as String,
  director = json['director'] as String;

  Map<String, dynamic> toJson() => {

    'title' : title,
    'description' : descricao,
    'poster' : poster,
    'genre' : genre,
    'director' : director,

  };


}