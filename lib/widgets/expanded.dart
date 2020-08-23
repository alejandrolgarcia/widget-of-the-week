import 'package:flutter/material.dart';

/*
 * Use el widget Expanded para expandir un Row o Column para
 * que el elemento ocupe todo el espacio disponible.
 * Use la propiedad flex para darle diferente número de
 * prioridad o tamaño al elemento.
 */

class ExpandedWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded')
      ),
      body: Row(
        children: <Widget>[
          Cuadrado( Colors.blue ),

          Expanded(
            flex: 3,
            child: Cuadrado( Colors.green 
            )
          ),

          Expanded(
            flex: 2,
            child: Cuadrado( Colors.green 
            )
          ),

          Cuadrado( Colors.blue ),
        ],
      )
    );
  }
}

// Widget personalizado

class Cuadrado extends StatelessWidget {
  
  // Propiedades
  final Color color;

  // Constructor
  Cuadrado( this.color );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( vertical: 20, horizontal: 20 ),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: this.color
      ),

    );
  }
}