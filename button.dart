
import 'package:flutter/material.dart';

class ButtonNextWidget extends StatelessWidget {
  final Function()? onTap;
  final IconData? icon;
  final String title;

  const ButtonNextWidget({Key? key, required this.onTap, this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      splashColor: Colors.purple[100],
      highlightColor: Colors.purple[100],
      onTap: onTap,
      child: Ink(
        height: size.height * 0.080,
        width: size.width * 0.90,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.purple,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.24,
                  fontWeight: FontWeight.w700,
                  color: Colors.purple,
                )),
            Visibility(
              visible: icon != null,
              child: Padding(
                padding: EdgeInsets.only(left: size.width * 0.03),
                child: Icon(
                  icon,
                  color: Colors.purple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
