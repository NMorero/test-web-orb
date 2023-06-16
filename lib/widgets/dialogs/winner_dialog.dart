import 'package:flutter/material.dart';
import 'package:ten_thousand_counter/utils/global.dart';

class WinnerDialog extends StatelessWidget {
  const WinnerDialog(this._playerName, {super.key});

  final String _playerName;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Center(
        child: Text(
          "$_playerName ganó",
          style: TextStyle(fontSize: 20, color: AC.darkGrey()),
        ),
      ),
    );
  }
}
