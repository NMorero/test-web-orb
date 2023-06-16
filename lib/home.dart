import 'package:flutter/material.dart';
import 'package:ten_thousand_counter/games/ten_thousand/ten_thousand.dart';
import 'package:ten_thousand_counter/utils/global.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AC.darkGrey(),
        centerTitle: true,
        leading: const Center(),
        title: const Text("Contador puntos"),
      ),
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => AC.darkGrey(),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TenThousandMain(),
              ),
            );
          },
          child: Text(
            "Iniciar juego",
            style: TextStyle(color: CC.white()),
          ),
        ),
      ),
    );
  }
}
