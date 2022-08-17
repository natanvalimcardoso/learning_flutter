import 'package:flutter/material.dart';

class PaginaDois extends StatefulWidget {
  const PaginaDois({Key? key}) : super(key: key);

  @override
  State<PaginaDois> createState() => _PaginaDoisState();
}

String textArgument = '';

class _PaginaDoisState extends State<PaginaDois> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2 PÁGINA'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('O usuário digitou: $textArgument')
          )
        ],
      ),
    );
  }
}
