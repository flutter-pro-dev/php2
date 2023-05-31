import 'dart:developer';

import 'package:flutter/material.dart';

class AdminSocietyFlatList extends StatelessWidget {
  final List blockIndex;
  final List blockName;
  const AdminSocietyFlatList(
      {Key? key, required this.blockIndex, required this.blockName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    for (var i = 0; i < blockIndex.length; i++) {
      TextEditingController controller = blockIndex[i];
      String value = controller.text;
      log('Index: $i, Value: $value');
    }

    // log(blockIndex.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Block"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              for (int i = 0; i < blockIndex.length; i++)
                Card(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          blockName[i].text.toString(),
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(height: 5),
                        Text(
                          blockIndex[i].text.toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
