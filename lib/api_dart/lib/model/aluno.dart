// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:learn_flutter/api_dart/lib/model/curso.dart';
import 'package:learn_flutter/api_dart/lib/model/endereco.dart';

class Aluno {
  String id;
  String nome;
  int idade;
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