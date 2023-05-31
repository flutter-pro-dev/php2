import 'dart:developer';

import 'package:flutter/material.dart';

import '../../widgets/round_button.dart';
import '../../widgets/text_field.dart';

class SocietyFlate extends StatefulWidget {
  const SocietyFlate({Key? key}) : super(key: key);

  @override
  State<SocietyFlate> createState() => _SocietyFlateState();
}

class _SocietyFlateState extends State<SocietyFlate> {
  //

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
              Expanded(
                child: ListView.builder(
                    itemCount: 19,
                    itemBuilder: (context, index) {
                      return const Column(
                        children: [
                          ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 0.0),
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            leading: Icon(
                              Icons.home,
                              color: Colors.grey,
                            ),
                            title: Text("Phase 1"),
                            trailing: Icon(
                              Icons.next_plan_rounded,
                              size: 15,
                            ),
                          ),
                          Divider(),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
