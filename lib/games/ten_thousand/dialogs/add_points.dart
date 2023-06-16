import 'package:flutter/material.dart';

import '../../../utils/global.dart';

class AddScoreDialog extends StatefulWidget {
  const AddScoreDialog(this._playername, {super.key});

  final String _playername;

  @override
  State<StatefulWidget> createState() => _AddScoreDialogState();
}

class _AddScoreDialogState extends State<AddScoreDialog> {
  final TextEditingController _scoreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Agregar puntos a ${widget._playername}"),
      content: Container(
        child: TextFormField(
          controller: _scoreController,
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
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
            Navigator.of(context).pop(int.parse(_scoreController.text));
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
    );
  }
}
