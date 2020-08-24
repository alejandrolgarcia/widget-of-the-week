import 'package:flutter/material.dart';

/*
 *  Use el widget Wrap para alinear elementos hijos en varias direcciones
 *  horizonales o verticales.
 *  Use la propiedad alignment para determinar la alineación entre los widgets hijos.
 *  Use la propiedad direction para determinar la alineacion horizontal o vertical.
 *  Use la propiedad spacing para establecer el espacio entre los elementos.
 */

class WrapWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap')
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          spacing: 10.0,
          children: <Widget>[

            Tag('MySql'),
            Tag('Postgress'),
            Tag('Oracle'),
            Tag('MS SQL Server'),
            Tag('Maria DB'),
            Tag('Oracle'),
            Tag('MS SQL Server'),
            Tag('Maria DB'),

          ],
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {

  final String texto;

  Tag( this.texto );

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Text(texto[0]),
        backgroundColor: Colors.white
      ),
      label: Text(texto, style: TextStyle( color: Colors.white )),
      backgroundColor: Colors.blue,
    );
  }
}