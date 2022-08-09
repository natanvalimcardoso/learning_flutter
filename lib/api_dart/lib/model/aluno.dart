// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:learn_flutter/api_dart/lib/model/curso.dart';
import 'package:learn_flutter/api_dart/lib/model/endereco.dart';

class Aluno {
  String id;
  String nome;
  int? idade;
  bool isAluno;
  List<String> nomesCurso;
  List<Cursos> cursos;
  Endereco endereco;

  Aluno({
    required this.id,
    required this.nome,
    required this.idade,
    required this.isAluno,
    required this.nomesCurso,
    required this.cursos,
    required this.endereco,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'idade': idade,
      'isAluno': isAluno,
      'nomesCurso': nomesCurso,
      'cursos': [
        {
          cursos.map((curso) => curso.toMap()).toList(),
        }
      ],
      'endereco': endereco.toMap()
    };
  }

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      idade: map['idade'],
      isAluno: map['isAluno'] ?? false,
      nomesCurso: map['nomesCurso'],
      cursos: map['cursos'].map((cursoMap) => Cursos.fromMap(cursoMap)).toList(),
      endereco: Endereco.fromMap(map['endereco']),
    );
  }

  String toJson() => jsonEncode(toMap());
  factory Aluno.fromJson(String json) => Aluno.fromMap(jsonDecode(json));



  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome, idade: $idade, isAluno: $isAluno, nomesCurso: $nomesCurso, cursos: $cursos, endereco: $endereco)';
  }
}


// {
// id: "1",
// nome: "Natan Valim Cardoso",
// idade: 21,
// isAluno: true,
// nomesCurso: [
// "Masterclass",
// "Alura",
// "Udemy Flutter",
// "Academia do Flutter",
// ],
// cursos: [
// {
// id: 1,
// nome: "Masterclass",
// isAluno: true,
// },
// {
// id: 2,
// nome: "Imersão Bloc",
// isAluno: false,
// },
// ],
// endereco: {
// rua: "Rua Governador Jorge Lacerda",
// CEP: "09050496911",
// numero: "12",
// cidade: {
// id: 1,
// nome: "São Paulo",
// },
// telefone: {
// ddd: 11,
// numero: 48991749818,
// },
// },
// }