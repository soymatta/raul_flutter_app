import 'package:flutter/material.dart';
import 'package:raul_flutter_app/pagina_canchas.dart';
import 'package:raul_flutter_app/pagina_equipos.dart';
import 'package:raul_flutter_app/pagina_torneos.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaginaCanchas(),
                        ),
                      );
                    },
                    child: Image.asset('assets/img/SportCup.jpeg'),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaginaCanchas(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    const Text("Canchas"),
                    Image.asset('assets/img/canchas.jpeg'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaginaEquipos(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    const Text("Equipos"),
                    Image.asset('assets/img/equipos.jpeg'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaginaTorneos(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    const Text("Torneos"),
                    Image.asset('assets/img/canchas.jpeg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
