import 'package:flutter/material.dart';

import 'academia/arguments/pages/pagina_dois.dart';
import 'academia/arguments/pages/pagina_um.dart';
import 'academia/background/page_background.dart';
import 'academia/dialogs/home_dialog_page.dart';
import 'academia/page/home_academia_page.dart';

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
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) =>  const HomeAcademiaPage(),
        '/arguments': (_) => PaginaUm(),
        '/paginaDois': (_) => const PaginaDois(),
        '/pageBackground': (_) => const PageBackground(),
        '/homeDialogPage': (_) => const HomeDialogPage(),
      },
    );
  }
}

//imports
