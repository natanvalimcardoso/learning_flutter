// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'CEP': cep,
      'numero': numero,
      'cidade': cidade.toMap(),
      'telefone': telefone.toMap(),
    };
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] ?? '',
      cep: map['CEP'] ?? '',
      numero: map['numero'] ?? '',
      cidade: Cidade.fromMap(map['cidade']),
      telefone: Telefone.fromMap(map['telefone']),
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Endereco(rua: $rua, cep: $cep, numero: $numero, cidade: $cidade, telefone: $telefone)';
  }
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