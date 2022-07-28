import 'repositories/cidade_repository.dart';
import 'repositories/user_repository.dart';

void main() async {
  var cidadeRepository = CidadeRepository();
  var usuarioRepository = UserRepository();

  //-----------// Cidade // --------------//
  try {
    var cidade = await cidadeRepository.buscarCidade('88990000');
    print(cidade);
  } catch (e) {
    print('Erro ao buscar cidade');
  }

  //-----------// Usuario // --------------//
  var usuario = await usuarioRepository.fetchUser('3');
  print(usuario?.name ?? 'Não encontrado');
}
