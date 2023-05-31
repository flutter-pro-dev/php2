import 'package:flutter/material.dart';
import 'package:society/forms/users/phase_list.dart';
import 'package:society/forms/users/search_society.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/text_field.dart';

class AfterSearchPage extends StatefulWidget {
  const AfterSearchPage({super.key});

  @override
  State<AfterSearchPage> createState() => _AfterSearchPageState();
}

int _one = 1;

class _AfterSearchPageState extends State<AfterSearchPage> {
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchSociety(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey, width: 0.5),
                  ),
                  child: const Text(
                    "Sagar homes",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ),
              // const TextFieldCustom(hint: 'Name of society'),
              const SizedBox(height: 10),
              const Text("Select Your Building"),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      final int a = index + _one;

                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PhaseList(),
                                ),
                              );
                            },
                            child: ListTile(
                              dense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 0.0),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              leading: const Icon(
                                Icons.home,
                                color: Colors.grey,
                              ),
                              title: Text("Phase " + a.toString()),
                              trailing: const Icon(
                                FontAwesomeIcons.chevronRight,
                                size: 15,
                              ),
                            ),
                          ),
                          const Divider(),
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
