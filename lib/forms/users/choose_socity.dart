import 'package:flutter/material.dart';
import 'package:society/forms/users/search_society.dart';

import '../../widgets/text_field.dart';

class ChooseSociety extends StatefulWidget {
  const ChooseSociety({super.key});

  @override
  State<ChooseSociety> createState() => _ChooseSocietyState();
}

class _ChooseSocietyState extends State<ChooseSociety> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.abc),
        ),
        automaticallyImplyLeading: false,
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
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey, width: 0.5),
                  ),
                  child: Text(
                    "Name of the Society",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ),
              // const TextFieldCustom(hint: 'Name of society'),
              const SizedBox(height: 10),
              // const Text("Select Your Building"),
              // const SizedBox(height: 10),
              // Expanded(
              //   child: ListView.builder(
              //       itemCount: 19,
              //       itemBuilder: (context, index) {
              //         return const Column(
              //           children: [
              //             ListTile(
              //               dense: true,
              //               contentPadding: EdgeInsets.symmetric(
              //                   horizontal: 0.0, vertical: 0.0),
              //               visualDensity:
              //                   VisualDensity(horizontal: 0, vertical: -4),
              //               leading: Icon(
              //                 Icons.home,
              //                 color: Colors.grey,
              //               ),
              //               title: Text("Phase 1"),
              //               trailing: Icon(
              //                 Icons.next_plan_rounded,
              //                 size: 15,
              //               ),
              //             ),
              //             Divider(),
              //           ],
              //         );
              //       }),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
