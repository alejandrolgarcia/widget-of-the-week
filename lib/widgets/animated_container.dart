import 'dart:math';
import 'package:flutter/material.dart';

/*
 * Use AnimatedContainer para animar estas propiedades. Al igual que el widget Container, 
 * AnimatedContainer te permite definir el ancho, la altura, los colores de fondo y más. 
 * Sin embargo, cuando el AnimatedContainer se reconstruye con nuevas propiedades, 
 * automáticamente se anima entre los valores antiguos y nuevos. 
 * En Flutter, estos tipos de animaciones se conocen como “animaciones implícitas”. 
 */

class AnimatedContainerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MiPagina();
  }
}

class MiPagina extends StatefulWidget {
  const MiPagina({
    Key key,
  }) : super(key: key);

  @override
  _MiPaginaState createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {
  @override
  Widget build(BuildContext context) {

    // Define las diferentes propiedades con valores aleatorios con la clase Random(). 
    // Actualiza estas propiedades cuando el usuario toque un FloatingActionButton.

    final rnd = new Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    final r2 = rnd.nextInt(255);
    final g2 = rnd.nextInt(255);
    final b2 = rnd.nextInt(255);

    final width  = rnd.nextInt( 300 ) + 50;
    final height = rnd.nextInt( 300 ) + 50;

    final borderRadius = BorderRadius.circular( rnd.nextInt( 200 ).toDouble());
    final border = Border.all( 
      width: rnd.nextInt( 20 ).toDouble() +2,
      color: Color.fromRGBO(r2, g2, b2, 1)
    );

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Animated Container')
      // ),
      floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.blue,
      child: Icon(Icons.accessibility_new),
      // Cuando el usuario toca el botón
      onPressed: (){
        // Usa setState para reconstruir el widget con nuevos valores
        setState( (){} );
      }
    ),
    body: Center(
      child: AnimatedContainer(
        // Usa setState para reconstruir el widget con nuevos valores.

        // Define la duración de la animación
        duration: Duration(milliseconds: 1200),
        // Proporciona una curva opcional para hacer que la animación se sienta más suave
        curve: Curves.elasticOut,
        width: width.toDouble(),
        height: height.toDouble(),
        decoration: BoxDecoration(
          color: Color.fromRGBO(r, g, b, 1),
          border: border,
          borderRadius: borderRadius
        ),
      )
    )
    );
  }
}