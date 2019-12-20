import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumeros = [10, 20, 30, 40, 50];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Builder'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index) {
        final imagen = _listaNumeros[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/id/$imagen/500/300'),
          placeholder: AssetImage('data/assets/jar-loading.gif'),
        );
      },
    );
  }
}
