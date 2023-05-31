import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:society/forms/admin/admin_society_list.dart';
import 'package:society/pages/home_page.dart';
import 'package:society/widgets/round_button.dart';

class AdminSocietyDetails extends StatefulWidget {
  AdminSocietyDetails({Key? key, required this.selectedList}) : super(key: key);
  final List selectedList;

  @override
  _AdminSocietyDetailsState createState() => _AdminSocietyDetailsState();
}

class _AdminSocietyDetailsState extends State<AdminSocietyDetails> {
  List data = [];
  @override
  void initState() {
    super.initState();
    data = widget.selectedList;
    log(data.length.toString());
    log(data.toString());
    addTextField();
  }

  //
  List<String> flatString = [];

  bool isChecked = false;

  //
  List<Widget> flatTextField = [];
  List<TextEditingController> flatController = [];
  // controllerFlatNum
  List<Widget> flatTextFieldNumS = [];
  List<TextEditingController> flatControllerNumS = [];
  //
  List<Widget> flatTextFieldNumE = [];
  List<TextEditingController> flatControllerNumE = [];

  void addTextField() {
    TextEditingController controller = TextEditingController();
    flatController.add(controller);
    TextEditingController controllerFlatNumS = TextEditingController();
    flatControllerNumS.add(controllerFlatNumS);
    TextEditingController controllerFlatNumE = TextEditingController();
    flatControllerNumE.add(controllerFlatNumE);

    setState(() {
      flatTextField.add(TextField(
        decoration: const InputDecoration(hintText: "Block Name or Phase Name"),
        controller: controller,
      ));
      flatTextFieldNumS.add(TextField(
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(hintText: "Started"),
        controller: controllerFlatNumS,
      ));
      flatTextFieldNumE.add(TextField(
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(hintText: "Ended"),
        controller: controllerFlatNumE,
      ));
    });
  }

  void removeTextField() {
    setState(() {
      if (flatTextField.isNotEmpty) {
        TextEditingController removedController = flatController.removeLast();
        removedController.dispose();
        flatTextField.removeLast();
      }
    });
  }

  @override
  void dispose() {
    for (var controller in flatController) {
      controller.dispose();
    }
    super.dispose();
  }

//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Society Details"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminSocietyFlatList(
                      blockIndex: flatControllerNumE,
                      blockName: flatController,
                    ),
                  ),
                );
              },
              icon: Icon(Icons.check))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ElevatedButton(
              //   child: const Text('send'),
              //   onPressed: () {
              //     for (var i = 0; i < flatTextField.length; i++) {
              //       TextEditingController controller = flatController[i];
              //       String value = controller.text;
              //       // log('Index: $i, Value: $value');
              //     }
              //     for (var i = 0; i < flatTextFieldNumS.length; i++) {
              //       TextEditingController controller = flatControllerNumS[i];
              //       String value = controller.text;
              //       // log('Index: $i, Value: $value');
              //     }
              //     for (var i = 0; i < flatTextFieldNumE.length; i++) {
              //       TextEditingController controller = flatControllerNumE[i];
              //       String value = controller.text;

              //       // log('Index: $i, Value: $value');
              //     }
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => AdminSocietyFlatList(
              //           blockIndex: flatControllerNumE,
              //           blockName: flatController,
              //         ),
              //       ),
              //     );
              //   },
              // ),
              // const SizedBox(height: 20),
              if (widget.selectedList.contains("Flats"))
                ExpansionTile(
                  title: const Text("Flats"),
                  children: <Widget>[
                    Builder(
                      builder: (BuildContext context) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 500,
                              width: double.infinity,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: flatTextField.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey, width: 0.5)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        children: [
                                          flatTextField[index],
                                          flatTextFieldNumS[index],
                                          flatTextFieldNumE[index],
                                          SizedBox(height: 5)
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: addTextField,
                                  child: const Text(' Add '),
                                ),
                                ElevatedButton(
                                  onPressed: removeTextField,
                                  child: const Text('Remove'),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              if (widget.selectedList.contains("Houses"))
                ExpansionTile(
                  title: const Text("Houses"),
                  children: <Widget>[
                    Builder(
                      builder: (BuildContext context) {
                        return Column(
                          children: [
                            SizedBox(height: 20),
                            Checkbox(
                              checkColor: Colors.white,
                              // fillColor: MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              height: 500,
                              width: double.infinity,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: flatTextField.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey, width: 0.5)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        children: [
                                          flatTextField[index],
                                          flatTextFieldNumS[index],
                                          flatTextFieldNumE[index],
                                          SizedBox(height: 5)
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: addTextField,
                                  child: const Text(' Add '),
                                ),
                                ElevatedButton(
                                  onPressed: removeTextField,
                                  child: const Text('Remove'),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        );
                      },
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class LittleAddButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const LittleAddButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
