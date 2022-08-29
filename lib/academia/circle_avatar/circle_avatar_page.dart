import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Container(
        width: 100,
        height: 100,
        child: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/8/83/Bra-Cos_%281%29_%28cropped%29.jpg',
          ),
        ),
      ),
    );
  }
}


class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({ Key? key, required this.urlImage }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
           
       );
  }
}
