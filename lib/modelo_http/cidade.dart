// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cidade {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;

  Cidade({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

  //* Recebe um mapa e transforma em uma cidade(Nosso Modelo)
  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      bairro: map['bairro'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd'] ?? '',
    );
  }

  //* Recebe um json(como String) e decodifica em chave e valor e apos isso chama o from maps para transformar na cidade
  factory Cidade.fromJson(String source) {
    var jsonMap = jsonDecode(source);
    return Cidade.fromMap(jsonMap);
  }


  //* Pega nossa instacia e transformar em chave e valor
  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ddd': ddd,
    };
  }

  //* Transformar em json 
  String toJson() => jsonEncode(toMap());


  //* Serve só para printar no depurado e não aparecer intance of ...
  @override
  String toString() {
    return 'Cidade(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
  }




// {
// cep: "88990-000",
// logradouro: "",
// complemento: "",
// bairro: "",
// localidade: "Praia Grande",
// uf: "SC",
// ibge: "4213807",
// gia: "",
// ddd: "48",
// siafi: "8271",
// }