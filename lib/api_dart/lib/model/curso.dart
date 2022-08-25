// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cursos {
  int id;
  String nome;
  bool isAluno;

  Cursos({required this.id, required this.nome, required this.isAluno});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'isAluno': isAluno,
    };
  }

  factory Cursos.fromMap(Map<String, dynamic> map) {
    return Cursos(
      id: map['id'] ?? 0,
      nome: map['nome'] ?? '', //* Bool, Int, String
      isAluno: map['isAluno'] ?? false,
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Cursos.fromJson(String json) => Cursos.fromMap(jsonDecode(json));

  @override
  String toString() => 'Cursos(id: $id, nome: $nome, isAluno: $isAluno)';
}

// cursos: [
// {
// id: 1,
// nome: "Masterclass",
// isAluno: true,
// }
// ],
