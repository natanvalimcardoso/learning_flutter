import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/flexible.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { //precisa sempre ter o build para funcionar o app.
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlexiblePage() ,
      debugShowCheckedModeBanner: false,
      
    );
  }
}

//imports
