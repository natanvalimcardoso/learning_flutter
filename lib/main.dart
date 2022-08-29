import 'package:flutter/material.dart';

import 'academia/arguments/pages/pagina_dois.dart';
import 'academia/arguments/pages/pagina_um.dart';
import 'academia/background/page_background.dart';
import 'academia/circle_avatar/circle_avatar_page.dart';
import 'academia/dialogs/home_dialog_page.dart';
import 'academia/forms/forms_page.dart';
import 'academia/gerenciadores_estado/home_gerenciadores.dart';
import 'academia/home_academia_page.dart';
import 'academia/stack/home_stack_page.dart';
import 'academia/stack/loading_page.dart';

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
        '/': (_) => const HomeAcademiaPage(),
        '/arguments': (_) => PaginaUm(),
        '/paginaDois': (_) => const PaginaDois(),
        '/pageBackground': (_) => const PageBackground(),
        '/homeDialogPage': (_) => const HomeDialogPage(),
        '/formsPage': (_) => const FormsPage(),
        '/homeStackPage': (_) =>  HomeStackPage(),
        '/circleAvatarPage': (_) =>  const CircleAvatarPage(),
        '/loadingPage': (_) =>  const LoadingPage(),
        '/homeGerenciadores': (_) =>  const HomeGerenciadores(),
      },
    );
  }
}

//imports
