import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:society/forms/users/after_search.dart';

class SearchSociety extends StatefulWidget {
  SearchSociety({Key? key}) : super(key: key);

  @override
  _SearchSocietyState createState() => _SearchSocietyState();
}

//

@override
class _SearchSocietyState extends State<SearchSociety> {
//
  bool show = false;
  TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    _searchController.dispose();
    // ignore: avoid_print
    print('Dispose used');
    super.dispose();
  }
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // The search area here
          title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            onChanged: (value) {
              if (_searchController.text.contains("s")) {
                log("hi");
                show = true;
                setState(() {});
              } else {
                show = false;
                setState(() {});
              }
            },
            controller: _searchController,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      )),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return show == true
                ? InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AfterSearchPage(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Sagar Homes"),
                    ),
                  )
                : SizedBox();
          },
        ),
      ),
    );
  }
}
