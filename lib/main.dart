import 'package:flutter/material.dart';
import 'academia/background/page_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { //precisa sempre ter o build para funcionar o app.
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageBackground(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

//imports
