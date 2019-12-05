import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_cardtipo1()],
      ),
    );
  }

  Widget _cardtipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text('Mi tarjeta'),
              subtitle: Text(
                  'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum '),
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () => {},
              )
            ],
          )
        ],
      ),
    );
  }
}
