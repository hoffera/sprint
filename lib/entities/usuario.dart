import 'Objetivo.dart';

class Usuario {
  int? id;
  String? nome;
  String? email;
  String? senha;
  String? confirmarSenha;
  List<dynamic>? objetivos;


  Usuario(
      {this.id, this.nome, this.email, this.senha, this.confirmarSenha, this.objetivos});

  factory Usuario.fromJson(Map<String, dynamic> json){
    return Usuario(
        id: json['id'],
        nome: json['nome'],
        email: json['email'],
        senha: json['senha'],
        confirmarSenha: '',
        objetivos:
        json['objetivos'].map((objetivo) => Objetivo.fromJson(objetivo)).toList());
  }
}