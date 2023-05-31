import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:society/forms/users/after_search.dart';
import 'package:society/forms/users/sub_final_house.dart';

// widget
class PhaseList extends StatelessWidget {
  const PhaseList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sagar Homes"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  final int num = index + 1;
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          log(num.toString());
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubFinalHousePage(
                                index: num.toString(),
                              ),
                            ),
                          );
                        },
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 0.0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -3),
                          leading: Iconify(
                            Ph.house,
                            color: Colors.black54,
                          ),
                          title: Text("Home  " + num.toString()),
                          trailing: const Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 15,
                          ),
                        ),
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
