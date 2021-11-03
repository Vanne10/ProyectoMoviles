import 'package:flutter/material.dart';
import 'package:proyecto_moviles/pages/login.dart';
import 'package:proyecto_moviles/pages/registro.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  //'usuarios': (_) => UsuariosPages(),
  //'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegistroPage(),
  //'loading': (_) => LoadingPage(),
};
