import 'package:flutter/material.dart';

enum PopupMenuPages {
  arguments,
}

class HomeAcademiaPage extends StatelessWidget {
  const HomeAcademiaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Academia do Flutter'),
        actions: [
          PopupMenuButton(
              icon: const Icon(Icons.menu),
              onSelected: (
                PopupMenuPages valueSelected,
              ) {
                switch (valueSelected) {
                  case PopupMenuPages.arguments:
                    Navigator.of(context).pushNamed('/arguments');
                    break;
                  default:
                }
              },
              itemBuilder: (context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.arguments,
                    child: Text('Arguments'),
                  )
                ];
              })
        ],
      ),
      body: Container(),
    );
  }
}
