import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componente Temp'),
        ),
        body: ListView(children: _crearItemsCorta()),
      ),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     lista..add(tempWidget)..add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.insert_emoticon),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
