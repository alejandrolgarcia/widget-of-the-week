import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/expanded.dart';
// import 'package:widget_of_the_week/widgets/safe_area.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget of the Week',
      initialRoute: '/',
      routes: {
        // '/' : (BuildContext context) => SafeAreaWidget()
        '/' : (BuildContext context) => ExpandedWidget()
      },
    );
  }
}