import 'dart:developer';

import 'package:flutter/material.dart';

class TextFieldList extends StatefulWidget {
  @override
  _TextFieldListState createState() => _TextFieldListState();
}

class _TextFieldListState extends State<TextFieldList> {
  List<Widget> textFields = [];
  List<TextEditingController> controllers = [];

  void addTextField() {
    TextEditingController controller = TextEditingController();
    controllers.add(controller);

    setState(() {
      textFields.add(TextField(
        controller: controller,
      ));
    });
  }

  void removeTextField() {
    setState(() {
      if (textFields.isNotEmpty) {
        TextEditingController removedController = controllers.removeLast();
        removedController.dispose();
        textFields.removeLast();
      }
    });
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic TextFields'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              for (var i = 0; i < textFields.length; i++) {
                TextEditingController controller = controllers[i];
                String value = controller.text;
                log('Index: $i, Value: $value');
              }
            },
            child: Text('Print'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: addTextField,
            child: Text('Add TextField'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: removeTextField,
            child: Text('Remove Last TextField'),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: textFields.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: textFields[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
