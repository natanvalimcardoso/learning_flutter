import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  const FlexiblePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Color.fromARGB(255, 34, 0, 224),
            ),
          ),
        ],
      ),
    );
  }
}
