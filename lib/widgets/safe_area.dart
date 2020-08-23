import 'package:flutter/material.dart';

/*
 * Podemos envolver el widget en un SafeArea para evitar que queden
 * debajo de la información mostrada por el notch del telefono.
 * Si queremos que abajo no se aplique, podemos usar el argumento
 * bottom: false. También se puede usar left: true/false para
 * activarlo o desactivarlo en la parte izquierda al girar el dispositivo.
 */

class SafeAreaWidget extends StatelessWidget {

  final estilo = TextStyle( fontSize: 20.0 );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          left: true,
            child: ListView(
            children: List.generate(100, (i) => Text('$i - Hola Mundo', style: estilo)),
          ),
        )
      )
    );
  }
}
