import 'package:flutter/material.dart';
import 'package:ten_thousand_counter/games/ten_thousand/dialogs/add_points.dart';

import '../../utils/global.dart';
import '../../widgets/dialogs/winner_dialog.dart';
import '../models/player.dart';

class TenThousandExecutor extends StatefulWidget {
  const TenThousandExecutor(this._players, {super.key});

  final List<Player> _players;

  @override
  State<StatefulWidget> createState() => _TenThousandExecutor();
}

class _TenThousandExecutor extends State<TenThousandExecutor> {
  int _playerIndex = 0;
  bool _playerAlreadyWon = false;

  @override
  void initState() {
    for (Player player in widget._players) {
      setState(() {
        player.score = 0;
      });
    }
    super.initState();
  }

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
        child: SizedBox(
          width: 200,
          child: ListView(
            children: <Widget>[
              for (Player player in widget._players)
                Card(
                  child: Container(
                    width: 200,
                    height: 50,
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(player.name),
                        Text(player.score.toString()),
                        if (_playerIndex != player.id)
                          const SizedBox(
                            width: 50,
                          ),
                        if (_playerIndex == player.id)
                          Card(
                            child: IconButton(
                              iconSize: 15,
                              color: AC.darkGrey(opacity: 0.8),
                              onPressed: () async {
                                int? score = await showDialog(
                                    context: context,
                                    builder: (ctx) =>
                                        AddScoreDialog(player.name));
                                if (score != null) {
                                  if (score + player.score == 10000) {
                                    player.score += score;
                                    _playerAlreadyWon = true;
                                  } else if (score + player.score < 10000) {
                                    player.score += score;
                                  }
                                  if (_playerAlreadyWon &&
                                      player.id ==
                                          (widget._players.length - 1)) {
                                    await showDialog(
                                        context: context,
                                        builder: (ctx) =>
                                            WinnerDialog(player.name));
                                    Navigator.pop(context);
                                  } else {
                                    if (player.id ==
                                        (widget._players.length - 1)) {
                                      _playerIndex = 0;
                                    } else {
                                      _playerIndex++;
                                    }
                                  }
                                  setState(() {});
                                }
                              },
                              icon: const Icon(
                                Icons.edit,
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
