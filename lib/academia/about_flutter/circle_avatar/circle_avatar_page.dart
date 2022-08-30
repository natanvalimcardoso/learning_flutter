import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          ImageAvatar(
            urlImage:
                'https://upload.wikimedia.org/wikipedia/commons/8/83/Bra-Cos_%281%29_%28cropped%29.jpg',
          ),
          ImageAvatar(
            urlImage:
                'https://www.perfildosfamosos.com/megan-fox/foto-perfil-megan-fox.jpg?v=e86f06a48cf4b7aa94210f594dc621a0',
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(100)),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                urlImage,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5)
              ),
              child: const Text(
                'AO VIVO',
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
