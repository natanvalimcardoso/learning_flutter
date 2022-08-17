import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageBackground extends StatelessWidget {
  const PageBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/academia/background/assets/folhas.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Seja bem-vindo',
                        style: GoogleFonts.rubikMonoOne(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 196, 196, 196),
                        )),
                    // quebra linha
                    TextSpan(
                      text: '\n',
                    ),
                    // texto alinhado
                    TextSpan(
                        text: 'Natan',
                        style: GoogleFonts.rubikMonoOne(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
