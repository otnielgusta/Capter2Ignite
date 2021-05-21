import 'package:flutter/material.dart';

class NotesWidget extends StatefulWidget {
  const NotesWidget({
    Key key,
    @required this.notes,
  }) : super(key: key);

  final List<String> notes;

  @override
  _NotesWidgetState createState() => _NotesWidgetState();
}

class _NotesWidgetState extends State<NotesWidget> {
  var notes = <String>[];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (var i = 0; i < widget.notes.length; i++)
          Card(
            child: ListTile(
              title: Text(widget.notes[i]),
              onTap: () async {
                var response = await Navigator.pushNamed(
                    context, "/create-note",
                    arguments: widget.notes[i]);

                if (response != null) {
                  var description = response as String;
                  if (response == "") {
                    widget.notes.removeAt(i);
                    setState(() {});
                  } else {
                    widget.notes[i] = description;
                    setState(() {});
                  }
                }
              },
            ),
          )
      ],
    );
  }
}
