import 'package:flutter/material.dart';

class ButtonSaveWidget extends StatelessWidget {
  const ButtonSaveWidget({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context, controller.text);
            },
            child: Text("Salvar"),
          ),
        ),
      ],
    );
  }
}
