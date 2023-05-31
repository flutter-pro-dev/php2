import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:society/forms/users/choose_socity.dart';
import 'package:society/forms/admin/temp.dart';
import 'package:society/services/get_api.dart';

import '../../../widgets/round_button.dart';
import '../../../widgets/text_field.dart';
import '../../services/models/post_society.dart';

class AdminCreateSociety extends StatefulWidget {
  final String state;
  final String stateID;
  final String city;
  final String cityID;

  const AdminCreateSociety(
      {Key? key,
      required this.state,
      required this.city,
      required this.stateID,
      required this.cityID})
      : super(key: key);

  @override
  State<AdminCreateSociety> createState() => _AdminCreateSocietyState();
}

class _AdminCreateSocietyState extends State<AdminCreateSociety> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose City"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10),

                Text("Country "),
                TextDataCustom(
                  onTap: () {},
                  text: 'India',
                ),

                SizedBox(height: 10),
                Text("State  "),
                TextDataCustom(
                  onTap: () {},
                  text: widget.state,
                ),
                SizedBox(height: 10),
                Text("City "),
                TextDataCustom(
                  onTap: () {},
                  text: widget.city,
                ),
                SizedBox(height: 10),
                Text("Name of society "),
                TextFieldCustom(hint: 'Name of society'),
                SizedBox(height: 10),
                Text("Name of no "),
                TextFieldCustom(hint: 'Name of no'),
                SizedBox(height: 10),
                SizedBox(height: 10),
                Text("Address of the Society "),
                TextFieldCustom(hint: 'Address of the Society'),
                SizedBox(height: 10),
                Text("Select Your Building"),
                SizedBox(height: 10),
                DropdownCheckbox(
                  options: [
                    'Houses',
                    'Flats',
                  ],
                  submit: () {
                    log("sumitted");
                    submitData();
                  },
                ),
                // RoundedButton(title: "OK", onTap: () {}),
                // ExpansionTile(
                //   title: const Text('galaxy Two.'),
                //   children: <Widget>[
                //     Builder(
                //       builder: (BuildContext context) {
                //         return Container(
                //           // padding: const EdgeInsets.all(24),
                //           alignment: Alignment.center,
                //           child: Text("2"),
                //         );
                //       },
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> submitData() async {
    log('sumbitted');

    var adminSocietyData = PostSocietyModel(
      stateId: widget.stateID,
      cityId: widget.cityID,
      societyName: '',
      address: 'chalo gao chalte hai',
      latitude: '00.00',
      longitude: '00.00',
    );
    print(adminSocietyData);

    log(adminSocietyData.toString());
    var response = await Esociety()
        .AdminCreateSociety(adminSocietyData)
        .catchError((err) {});
    if (response == null) return;
    log('successful:');
    debugPrint('successful:');
  }
}

class TextDataCustom extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const TextDataCustom({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 0.5),
        ),
        child: Row(
          children: [
            Text("   "),
            Text(text),
          ],
        ),
      ),
    );
  }
}
