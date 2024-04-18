import 'package:flutter/material.dart';
import 'main.dart';

class CrearCuenta extends StatefulWidget {
  const CrearCuenta({Key? key}) : super(key: key);

  @override
  _CrearCuentaState createState() => _CrearCuentaState();
}

class _CrearCuentaState extends State<CrearCuenta> {
  bool terminos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text('Bienvenido a'),
                ],
              ),
              const Text(
                'Sport Champions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              const SizedBox(height: 20),
              const Text(
                  '¿Preparados para una experiencia única en el deporte?'),
              const TextField(decoration: InputDecoration(labelText: 'Email')),
              const TextField(
                  decoration: InputDecoration(labelText: 'Usuario')),
              const TextField(
                  decoration: InputDecoration(labelText: 'Contraseña')),
              const TextField(
                  decoration: InputDecoration(labelText: 'Repetir contraseña')),
              Row(
                children: [
                  Checkbox(
                    value: terminos,
                    onChanged: (value) {
                      setState(() {
                        terminos = value!;
                      });
                    },
                  ),
                  const Text('Aceptar términos y condiciones'),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text('Iniciar sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
