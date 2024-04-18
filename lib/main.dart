import 'package:flutter/material.dart';
import 'package:raul_flutter_app/home.dart';
import 'package:raul_flutter_app/crear_cuenta.dart';
import 'package:raul_flutter_app/pagina_inicial.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      routes: {
        '/': (context) => const Home(),
        '/pagina_inicial': (context) => const PaginaInicial(),
        '/crear_cuenta': (context) => const CrearCuenta(),
      },
      // initialRoute: '/',
      initialRoute: 'crear_cuenta', // Pruebas
    );
  }
}
