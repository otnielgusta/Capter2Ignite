import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  final isEdit;

  const AppBarWidget({Key key, @required this.isEdit}) : super(key: key);
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(widget.isEdit ? "Editar" : "Criar"),
      actions: [
        if (widget.isEdit == true)
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                Navigator.pop(
                  context,
                  "",
                );
              }),
      ],
    );
  }
}
