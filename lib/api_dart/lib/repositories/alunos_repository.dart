//* Uma api externa ou um serviço externo
import 'package:http/http.dart' as http;

import '../model/aluno.dart';

class AlunosRepository {
  Future<List<Aluno>> findAll() async {
    final alunosResponse = await http.get(Uri.parse('http://localhost:3031/alunos'));

    return [];                                                                    
  }
}
