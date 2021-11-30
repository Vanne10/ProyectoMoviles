import 'package:flutter/material.dart';
import 'package:proyecto_moviles/pages/drama.dart';
import 'package:proyecto_moviles/pages/fantasia.dart';
import 'package:proyecto_moviles/pages/infantiles.dart';
import 'package:proyecto_moviles/pages/login.dart';
import 'package:proyecto_moviles/pages/principal.dart';
import 'package:proyecto_moviles/pages/registro.dart';
import 'package:proyecto_moviles/pages/romance.dart';
import 'package:proyecto_moviles/pages/suspenso.dart';
import 'package:proyecto_moviles/pages/terror.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  //'usuarios': (_) => UsuariosPages(),
  'login': (_) => LoginPage(),
  'register': (_) => RegistroPage(),
  'drama': (_) => DramaPage(),
  'terror': (_) => TerrorPage(),
  'fantasia': (_) => FantasiaPage(),
  'romance': (_) => RomancePage(),
  'infantil': (_) => InfantilesPage(),
  'suspenso': (_) => SuspensoPagen(),
  'principal': (_) => PrincipalPage(),
  //'loading': (_) => LoadingPage(),
};
