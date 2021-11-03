import 'package:flutter/material.dart';
import 'package:proyecto_moviles/routes/rutas.dart';

void main() => runApp(MyApp());

@override
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BL',
      initialRoute: 'login',
      routes: appRoutes,
    );
  }
}
