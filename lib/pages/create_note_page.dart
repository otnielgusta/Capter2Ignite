import 'package:capter2_ignite/pages/home_page.dart';
import 'package:capter2_ignite/pages/widgets/app_bar_widget.dart';
import 'package:capter2_ignite/pages/widgets/button_save_widget.dart';
import 'package:flutter/material.dart';

class CreateNotePage extends StatefulWidget {
  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  TextEditingController controller = TextEditingController();
  String texto = "";
  bool isEdit = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (ModalRoute.of(context).settings.arguments != null) {
        controller.text = ModalRoute.of(context).settings.arguments as String;
        isEdit = true;
        setState(() {});
      }
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBarWidget(
            isEdit: isEdit,
          ),
          preferredSize: Size.fromHeight(62)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(
              height: 32,
            ),
            if (controller.text.isNotEmpty)
              ButtonSaveWidget(controller: controller),
          ],
        ),
      ),
    );
  }
}
