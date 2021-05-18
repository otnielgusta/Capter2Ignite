import 'package:capter2_ignite/pages/create_note_page.dart';
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
          final description = await Navigator.push(context,
              MaterialPageRoute(builder: (builder) => CreateNotePage()));
          notes.add(description.toString());
          setState(() {});
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (var i = 0; i < notes.length; i++)
              Card(
                child: ListTile(title: Text(notes[i])),
              )
          ],
        ),
      ),
    );
  }
}
