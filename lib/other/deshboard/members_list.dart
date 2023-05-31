import 'package:flutter/material.dart';

import 'details_screen.dart';

class SocietyMembersLists extends StatelessWidget {
  const SocietyMembersLists({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.backspace),
            ),
            actions: [Icon(Icons.edit)],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Column(
                    children: [
                      Text("All Members"),
                      Text("128"),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Text("Paid"),
                      Text("100"),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Text("UnPaid"),
                      Text("28"),
                    ],
                  ),
                ),
              ],
            ), // TabBar
            title: const Text('Society App'),
            // backgroundColor: Colors.blue,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromARGB(255, 31, 141, 231),
                      Color.fromARGB(255, 75, 129, 173)
                    ]),
              ),
            ),
          ), // AppBar
          body: const TabBarView(
            children: [
              AllMembersInList(),
              PaidMemberInList(),
              UnPaidMemberInList(),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}

class AllMembersInList extends StatelessWidget {
  const AllMembersInList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MembersDetailsScreen()),
                );
              },
              child: card_container(
                text: 'Harish Verma',
                image: "assets/images/profile_picture.png",
              ),
            );
          }),
    );
  }
}

class PaidMemberInList extends StatelessWidget {
  const PaidMemberInList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return PaidCardComponent(
              text: 'Harish Verma',
              color: Colors.green,
              image: "assets/images/paid.jpg",
            );
          }),
    );
  }
}

class UnPaidMemberInList extends StatelessWidget {
  const UnPaidMemberInList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return PaidCardComponent(
              text: 'Sumit Verma',
              color: Colors.red,
              image: "assets/images/paid.jpg",
            );
          }),
    );
  }
}

class PaidCardComponent extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final Color? color;
  final String image;
  const PaidCardComponent({
    super.key,
    this.icon,
    this.text,
    this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8.0,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: 110,
      width: double.infinity,
      child: Center(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text!,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'block 7 54',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    " Paid ",
                    style: TextStyle(
                      fontSize: 14,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class card_container extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final Color? color;
  final String image;
  const card_container({
    super.key,
    this.icon,
    this.text,
    this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8.0,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: 110,
      width: double.infinity,
      child: Center(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text!,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '6 members',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Ho No 35 sunder nagar bhopal",
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
