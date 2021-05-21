import 'package:capter2_ignite/pages/create_note_page.dart';
import 'package:capter2_ignite/pages/widgets/note_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Notes"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final description =
              await Navigator.pushNamed(context, "/create-note");
          if (description != null) {
            notes.add(description.toString());
            setState(() {});
          }
        },
      ),
      body: NotesWidget(notes: notes),
    );
  }
}
