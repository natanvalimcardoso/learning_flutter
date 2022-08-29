import 'package:flutter/material.dart';

import '../../widgets/loading_new_widget.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading Page'),
      ),
      body: Stack(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://i.pinimg.com/564x/63/41/8b/63418b8319d36232aa0cf6916ffa1884.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          LoadingNewWidget(isLoading: true,)
        ],
      ),
    );
  }
}
