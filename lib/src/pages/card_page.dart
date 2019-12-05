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
        children: <Widget>[
          _cardtipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardtipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardtipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardtipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _cardtipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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

  Widget _cardTipo2() {
    final card = Container(
      // elevation: 10.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: new NetworkImage('https://picsum.photos/1000/667'),
            placeholder: AssetImage('data/assets/jar-loading.gif'),
            fit: BoxFit.cover,
            height: 300.0,
            fadeInDuration: Duration(milliseconds: 200),
          ),

          // Image(
          //   image: NetworkImage(
          //       'http://hdwpro.com/wp-content/uploads/2019/02/Best-Landscape-4K.jpg'),
          // ),
          Container(
            child: Text(
              'Algún subtitulo con texto a elección',
            ),
            padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
