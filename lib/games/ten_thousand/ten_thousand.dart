import 'package:flutter/material.dart';
import 'package:ten_thousand_counter/games/ten_thousand/ten_thousand_executor.dart';

import '../../utils/global.dart';
import '../models/player.dart';

class TenThousandMain extends StatefulWidget {
  const TenThousandMain({super.key});

  @override
  State<StatefulWidget> createState() => _TenThousandMainState();
}

class _TenThousandMainState extends State<TenThousandMain> {
  List<Player> _players = [];

  final TextEditingController _newPlayerNameController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AC.darkGrey(),
        centerTitle: true,
        leading: const Center(),
        title: const Text("Diez mil"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Cantidad de jugadores: ${_players.length}",
              style: TextStyle(
                color: AC.darkGrey(),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            for (Player player in _players)
              Card(
                child: Container(
                  width: 150,
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      player.name,
                    ),
                  ),
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => AC.darkGrey(),
                ),
              ),
              onPressed: () async {
                Player? newPLayer = await showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("Agregar jugador"),
                    content: Container(
                      child: TextFormField(
                        controller: _newPlayerNameController,
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Cancelar",
                            style: TextStyle(
                              color: CC.white(),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop(Player(
                              name: _newPlayerNameController.text,
                              id: _players.length));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AC.darkGrey(),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Aceptar",
                            style: TextStyle(
                              color: CC.white(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
                if (newPLayer == null) return;
                setState(() {
                  _players.add(newPLayer);
                });
              },
              child: SizedBox(
                width: 135,
                child: Center(
                  child: Text(
                    "Agregar jugador",
                    style: TextStyle(color: CC.white()),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => AC.blue(),
                ),
              ),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TenThousandExecutor(_players),
                  ),
                );
              },
              child: Text(
                "Iniciar",
                style: TextStyle(color: CC.white()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
