// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Telefone {
  int ddd;
  String numero;

  Telefone({required this.ddd, required this.numero});

//* toMap = É um método que pega o objeto (Telefone) e transforma em um Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'numero': numero,
    };
  }

//* fromMap  = É um construtor, ele vai pegar um Map e transformar em um objeto (Telefone)
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0,
      numero: map['numero'] ?? '',
    );
  }

//* toJson = É um método que retorna uma string json do meu objeto (Telefone)
  String toJson() => jsonEncode(toMap());

//* fromJson = É um método baseado em uma string json que retorna um objeto
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

  @override
  String toString() => 'Telefone(ddd: $ddd, numero: $numero)';
}

// telefone: {
// ddd: 11,
// numero: "48991749818",
// },
