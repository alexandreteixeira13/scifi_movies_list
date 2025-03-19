class Diretor {

  late String name;
  late String bio;
  late DateTime birthYear;
  late DateTime deathYear;

  Diretor.v(this.name, this.bio, this.birthYear, this.deathYear);
  
  Diretor.fromJson(Map<String, dynamic> json)
  : name = json['Name'] as String,
    bio = json['Bio'] as String,
    birthYear = json['Birth'] as DateTime,
    deathYear = json['Death'] as DateTime;
  
  Map<String, dynamic> toJson() => {

    'Name' : name,
    'Bio' : bio,
    'Birth' : birthYear,
    'Death' : deathYear,


  };
}
