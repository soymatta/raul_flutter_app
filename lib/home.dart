import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
              SizedBox(
                width: 200,
                child: Image.asset('assets/img/SportCup.png'),
              ),
              const SizedBox(height: 20),
              const TextField(
                  decoration: InputDecoration(labelText: 'Usuario')),
              const SizedBox(height: 10),
              const TextField(
                  decoration: InputDecoration(labelText: 'Contraseña'),
                  obscureText: true),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pagina_inicial');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text('Iniciar sesión'),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: const Text('¿Olvidaste tu contraseña?'),
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.orange, thickness: 2),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/crear_cuenta');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text('Crear nueva cuenta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
