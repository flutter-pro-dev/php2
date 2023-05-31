import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:society/forms/users/choose_socity.dart';
import 'package:society/forms/admin/temp.dart';

import '../../widgets/round_button.dart';
import '../../widgets/text_field.dart';

class SocityRestitation extends StatefulWidget {
  const SocityRestitation({Key? key}) : super(key: key);

  @override
  State<SocityRestitation> createState() => _SocityRestitationState();
}

class _SocityRestitationState extends State<SocityRestitation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose City"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
              const TextFieldCustom(hint: 'Name of society'),
              const SizedBox(height: 10),
              const Text("Select Your Building"),
              const SizedBox(height: 10),
              DropdownCheckbox(
                options: ['Residence', 'Flat', 'blocks'],
                submit: () {},
              ),
              // RoundedButton(title: "OK", onTap: () {}),
              ExpansionTile(
                title: const Text('galaxy Two.'),
                children: <Widget>[
                  Builder(
                    builder: (BuildContext context) {
                      return Container(
                        // padding: const EdgeInsets.all(24),
                        alignment: Alignment.center,
                        child: Text("2"),
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
