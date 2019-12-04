import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componente Temp'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('ListTile'),
            ),
            Divider(),
            ListTile(
              title: Text('ListTile'),
            ),
            Divider(),
            ListTile(
              title: Text('ListTile'),
            ),
          ],
        ),
      ),
    );
  }
}
