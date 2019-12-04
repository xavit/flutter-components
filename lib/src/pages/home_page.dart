import 'package:flutter/material.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';
import 'package:flutter_components/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (contex, AsyncSnapshot<List<dynamic>> snapshot) {
        // print('builder');
        // print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );

    // return ListView(
    //   children: _listaItems(),
    // );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => {},
      );
      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
