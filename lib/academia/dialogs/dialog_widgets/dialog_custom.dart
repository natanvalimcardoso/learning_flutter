import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom(BuildContext context, {Key? key})
      : super(key: key, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: SizedBox(
            width: 300,
            height: 300,
            child: Column(
              children: const [
                Text('Seja bem vindo Natan!'),
              ],
            ),
          ),
        );
}
