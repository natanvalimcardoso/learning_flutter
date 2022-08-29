import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum PopupMenuPages {
  arguments,
  pageBackground,
  homeDialogPage,
  formsPage,
  homeStackPage,
}

class HomeAcademiaPage extends StatelessWidget {
  const HomeAcademiaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Academia do Flutter'),
          actions: [
            PopupMenuButton(
              icon: const Icon(Icons.menu),
              onSelected: (
                PopupMenuPages valueSelected,
              ) {
                switch (valueSelected) {
                  case PopupMenuPages.arguments:
                    Navigator.of(context).pushNamed('/arguments');
                    break;
                  case PopupMenuPages.pageBackground:
                    Navigator.of(context).pushNamed('/pageBackground');
                    break;
                  case PopupMenuPages.homeDialogPage:
                    Navigator.of(context).pushNamed('/homeDialogPage');
                    break;
                  case PopupMenuPages.formsPage:
                    Navigator.of(context).pushNamed('/formsPage');
                    break;
                  case PopupMenuPages.homeStackPage:
                    Navigator.of(context).pushNamed('/homeStackPage');
                    break;
                  default:
                }
              },
              itemBuilder: (context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.arguments,
                    child: Text('Arguments'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.pageBackground,
                    child: Text('Background'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.homeDialogPage,
                    child: Text('Dialog'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.formsPage,
                    child: Text('Forms'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.homeStackPage,
                    child: Text('Stack'),
                  ),
                ];
              },
            )
          ],
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textScaleFactor: ((size.width + size.height) / 2 * 0.00185),
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Seja bem-vindo a academia',
                    style: GoogleFonts.rubikMonoOne(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 196, 196, 196),
                    ),
                  ),
                  // quebra linha
                  const TextSpan(
                    text: '\n',
                  ),
                  // texto alinhado
                  TextSpan(
                    text: 'Natan',
                    style: GoogleFonts.rubikMonoOne(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ],
        )));
  }
}
