import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:society/forms/users/choose_socity.dart';

class ChooseCity extends StatefulWidget {
  const ChooseCity({Key? key}) : super(key: key);

  @override
  State<ChooseCity> createState() => _ChooseCityState();
}

class _ChooseCityState extends State<ChooseCity> {
  //
  bool orNot = false;
  //

  List<String> cityList = [
    "Indore",
    "Bhopal",
    "Ujjain",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black87,
            ),
          ),
        ],
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          "My Society",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(hintText: "Enter City Name"),
              ),
              Flexible(
                flex: 2,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    childAspectRatio: 2 / 2.5,
                  ),
                  itemCount: cityList.length,
                  itemBuilder: (context, index) {
                    log("message 1 ");
                    if (index > 0) {
                      log("message 2 ");
                      if ((index) % 2 == 0) {
                        orNot = true;
                        log(index.toString());
                      } else {
                        orNot = false;
                        log(orNot.toString());
                      }
                    }
                    return CityCardComponent(
                      city: cityList[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChooseSociety()),
                        );
                      },
                      even: false,
                    );
                  },
                ),
              ),
              Flexible(
                flex: 1,
                child: ListView.builder(
                  itemCount: cityList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 5,
                            ),
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(cityList[index]),
                          ),
                        ),
                        const Divider()
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CityCardComponent extends StatelessWidget {
  final String city;
  final VoidCallback onTap;
  final bool even;

  const CityCardComponent({
    Key? key,
    required this.city,
    required this.onTap,
    required this.even,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 130,
        width: 100,
        decoration: BoxDecoration(
          border: even == true
              ? const Border(
                  left: BorderSide(
                    color: Colors.grey,
                  ),
                  right: BorderSide(color: Colors.grey))
              : const Border(
                  left: BorderSide(
                    color: Color.fromARGB(0, 244, 67, 54),
                  ),
                  right: BorderSide(color: Color.fromARGB(0, 244, 67, 54))),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/images/buldingsBG.png",
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            Text(city),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
