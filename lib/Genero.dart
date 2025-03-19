class Genero {

  late String name;
  late String descricao;

  Genero.v(this.name, this.descricao);

  Genero.fromJson(Map<String, dynamic> json)
  : name = json['Name'] as String,
  descricao = json['Description'] as String;

  Map<String, dynamic> toJson() => {

    'Name' : name,
    'Description' : descricao,


  };
}