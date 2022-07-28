import 'cidade_repository/cidade_repository.dart';

void main() async {
  var cidadeRepository = CidadeRepository();
  var cidade = await cidadeRepository.buscarCidade('88990000');
  print(cidade);
}
