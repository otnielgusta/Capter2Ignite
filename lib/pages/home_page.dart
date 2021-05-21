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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Notes"),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(child: NotesWidget(notes: notes)),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () async {
                        final description =
                            await Navigator.pushNamed(context, "/create-note");
                        if (description != null) {
                          notes.add(description.toString());
                          setState(() {});
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Adicionar Nota",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
