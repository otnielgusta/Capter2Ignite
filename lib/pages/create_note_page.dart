import 'package:capter2_ignite/pages/home_page.dart';
import 'package:flutter/material.dart';

class CreateNotePage extends StatefulWidget {
  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Criar/Editar"),
        actions: [
          IconButton(icon: Icon(Icons.delete), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
              maxLines: null,
              maxLength: 500,
              decoration: InputDecoration(labelText: "Descrição"),
            ),
            if (controller.text.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, controller.text);
                },
                child: Text("Salvar"),
              ),
          ],
        ),
      ),
    );
  }
}
