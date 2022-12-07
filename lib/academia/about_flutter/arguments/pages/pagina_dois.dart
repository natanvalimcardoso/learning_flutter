import 'package:flutter/material.dart';

class PaginaDois extends StatefulWidget {
  const PaginaDois({Key? key}) : super(key: key);

  @override
  State<PaginaDois> createState() => _PaginaDoisState();
}

class _PaginaDoisState extends State<PaginaDois> {
  String textArgument = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        final argumentsData =  ModalRoute.of(context)?.settings.arguments as String?;
        textArgument = argumentsData ?? '';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2 PÁGINA'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('O usuário digitou: $textArgument'),
          ),
        ],
      ),
    );
  }
}
