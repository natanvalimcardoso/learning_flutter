import 'package:flutter/material.dart';
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
          '/pagina_dois': (_) => PaginaDois(),
        });
  }
}

//imports
