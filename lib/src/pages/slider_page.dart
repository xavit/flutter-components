import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 400.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 70.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _creaImagen(),
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        // print(valor);
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _creaImagen() {
    return Expanded(
      child: FadeInImage(
        image: new NetworkImage(
            'http://clipart-library.com/images_k/transparent-batman/transparent-batman-15.png'),
        placeholder: AssetImage('data/assets/jar-loading.gif'),
        fit: BoxFit.contain,
        width: _valorSlider,
        fadeInDuration: Duration(milliseconds: 200),
      ),
    );
  }
}
