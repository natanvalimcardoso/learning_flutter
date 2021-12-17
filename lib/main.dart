import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/Listview_builder.dart';
import 'package:learn_flutter/widgets/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { //precisa sempre ter o build para funcionar o app.
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   Controller(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

//imports
