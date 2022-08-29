import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class HomeStackPage extends StatelessWidget {
  HomeStackPage({Key? key}) : super(key: key);

  String text = lorem(paragraphs: 2, words: 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://i.pinimg.com/564x/63/41/8b/63418b8319d36232aa0cf6916ffa1884.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //* Parte branca
          Container(
            color: Colors.black45,
          ),
          //* Card
          Positioned(
            bottom: 50,
            left: 10,
            right: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 12,
              child: SizedBox(
                height: 250,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      child: Text(
                        'Seja bem vindo a pousada',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
