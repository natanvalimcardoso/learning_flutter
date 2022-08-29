import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingNewWidget extends StatelessWidget {
  final bool isLoading;
  const LoadingNewWidget({Key? key, required this.isLoading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Opacity(
      opacity: isLoading ? 1.0 : 0,
      child: Stack(
        children: [
          Container(
            height: size.height * 1,
            width: size.width * 1,
            color: Colors.black54,
          ),
          Center(
            child: LoadingAnimationWidget.twistingDots(
              leftDotColor: const Color(0xFF1A1A3F),
              rightDotColor: const Color(0xFFEA3799),
              size: 100,
            ),
          ),
        ],
      ),
    );
  }
}
