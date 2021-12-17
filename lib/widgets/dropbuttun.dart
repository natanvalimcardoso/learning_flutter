import 'package:flutter/material.dart';

class DropButton extends StatefulWidget {
  const DropButton({Key? key}) : super(key: key);

  @override
  _DropButtonState createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  List<String> items = <String>['One', 'Two', 'tree', 'Four'];
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          onChanged: (String? newValue){
            setState(() {
              dropdownValue = newValue!; // serve para atualizar o valor do dropdown onChanged todo.
              // ignore: avoid_print
              print(dropdownValue);
            });
          },
          value: dropdownValue, //  set value to the selected item  
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>( //puxa o valor do dropdown e mapeia para o dropdownmenuitem 
              value: value, // seleciona o valor do dropdown 
              child: Text(value),
            );
          }).toList(), //o tolist transforma o map em lista
        ),
      ),
    );
  }
}
