import 'package:flutter/material.dart';
import 'package:society/login/login_screen.dart';

import '../../utils/constants/constants.dart';
import '../../widgets/text_field.dart';

class SubFinalHousePage extends StatefulWidget {
  final String index;
  SubFinalHousePage({Key? key, required this.index}) : super(key: key);

  @override
  _SubFinalHousePageState createState() => _SubFinalHousePageState();
}

class _SubFinalHousePageState extends State<SubFinalHousePage> {
  //
  String? areYou;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblue,
        title: const Text("Sager home"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text("Country "),
                const TextFieldCustom(hint: 'India'),
                const SizedBox(height: 10),
                const Text("City "),
                const TextFieldCustom(hint: 'Bhopal'),
                const SizedBox(height: 10),
                const Text("Name of society "),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey, width: 0.5),
                  ),
                  child: const Text(
                    "Sagar home",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 10),

                const Text("Phase "),

                const CardTextComponent(
                  text: "Phase 1  ",
                ),
                const SizedBox(height: 10),

                const Text("Select Your Building"),

                CardTextComponent(
                  text: "Home  " + widget.index.toString(),
                ),
                // const TextFieldCustom(hint: 'Name of society'),
                const SizedBox(height: 10),
                const Text("Phone Number "),
                TextFieldCustom(hint: "Phone Number"),
                const SizedBox(height: 10),
                const Text("You are "),
                Container(
                  child: areYou == null
                      ? Column(
                          children: [
                            const Divider(),
                            RadioListTile(
                              dense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 0),
                              title: const Text("Flate Owner"),
                              value: "Owner",
                              groupValue: areYou,
                              onChanged: (value) {
                                setState(() {
                                  areYou = value.toString();
                                });
                              },
                            ),
                            RadioListTile(
                              dense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 0),
                              title: const Text("Rented with Family"),
                              value: "Rented",
                              groupValue: areYou,
                              onChanged: (value) {
                                setState(() {
                                  areYou = value.toString();
                                });
                              },
                            ),
                            RadioListTile(
                              dense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 0),
                              title:
                                  const Text("Rented with Other Flate Mates"),
                              value: "other",
                              groupValue: areYou,
                              onChanged: (value) {
                                setState(() {
                                  areYou = value.toString();
                                });
                              },
                            )
                          ],
                        )
                      : InkWell(
                          onTap: () {
                            areYou = null;
                            setState(() {});
                          },
                          child: CardTextComponent(
                            text: areYou.toString(),
                          ),
                        ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: areYou != null ? kblue : Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardTextComponent extends StatelessWidget {
  final String text;
  const CardTextComponent({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.black54),
      ),
    );
  }
}
