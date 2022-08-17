import 'package:flutter/material.dart';
import 'package:learn_flutter/academia/navegation/detalhes.dart';
import 'package:learn_flutter/academia/navegation/home_screen.dart';
import 'academia/arguments/pages/pagina_dois.dart';
import 'academia/arguments/pages/pagina_um.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => PaginaUm(),
        '/paginaDois': (_) => const PaginaDois(),
        'Home': (_) => const HomeScreen(),
        'Detalhes': (_) => const Detalhes(),
      },
    );
  }
}

//imports
