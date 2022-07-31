// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:learn_flutter/api_dart/lib/model/telefone.dart';
import 'package:learn_flutter/http_academia/models/cidade.dart';

class Endereco {
  String rua;
  String cep;
  int numero;
  Cidade cidade;
  Telefone telefone;
  
  Endereco({
    required this.rua,
    required this.cep,
    required this.numero,
    required this.cidade,
    required this.telefone,
  });
}

// endereco: {
// rua: "Rua Governador Jorge Lacerda",
// CEP: "09050496911",
// numero: 12,
// cidade: {
// id: 1,
// nome: "São Paulo",
// },
// telefone: {
// ddd: 11,
// numero: 48991749818,
// },
// },