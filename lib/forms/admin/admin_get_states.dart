import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:society/forms/admin/admin_get_s_city.dart';
import 'package:society/services/models/state_models.dart';

import '../../components/animated_search_bar.dart';
import '../../services/get_api.dart';

class AdminGetStatePage extends StatefulWidget {
  AdminGetStatePage({Key? key}) : super(key: key);

  @override
  _AdminGetStatePageState createState() => _AdminGetStatePageState();
}

class _AdminGetStatePageState extends State<AdminGetStatePage> {
  //
  bool full = true;
//
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            print(full);
            setState(() {
              full = !full;
            });
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AnimatedSearchBar(
                  expanded: full,
                ),
              ],
            ),
          ),
        ),
        //
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<List<GetStateModels>>(
                // future: ApiServices().getStates(),
                future: Esociety().fetchState(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () async {
                              // AdminGetCityPage() ,

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AdminGetCityPage(
                                    stateName:
                                        snapshot.data![index].name.toString(),
                                    stateID: snapshot.data![index].stateId
                                        .toString(),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      snapshot.data![index].name.toString(),
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Divider()
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
