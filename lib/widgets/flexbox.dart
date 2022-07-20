import 'package:flutter/material.dart';

class FlexibleExtended extends StatelessWidget {
  const FlexibleExtended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Flexible & Expanded'),
      ),
      body: Row(

        children: <Widget>[
          Container(
            height: 100,
            child: const Text('Item 1 - pretty big!'),
            color: Colors.red,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              child: const Text('Item 2'),
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              child: const Text('Item 3'),
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
