import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:society/forms/admin/admin_s_create.dart';
import 'package:society/services/models/state_models.dart';

import '../../services/get_api.dart';
import '../../services/models/city_models.dart';

class AdminGetCityPage extends StatefulWidget {
  final String stateName;
  final String stateID;

  AdminGetCityPage({Key? key, required this.stateName, required this.stateID})
      : super(key: key);

  @override
  _AdminGetCityPageState createState() => _AdminGetCityPageState();
}

class _AdminGetCityPageState extends State<AdminGetCityPage> {
  late Future<List<GetCityModel>> GetCity;
  late int stateIDnum;

  @override
  void initState() {
    stateIDnum = int.parse(widget.stateID.toString());
    log(stateIDnum.toString());
    log(widget.stateName.toString());
    log(widget.stateID.toString());
    super.initState();
    GetCity = Esociety().fetchCity(id: stateIDnum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Your City"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<List<GetCityModel>>(
                // future: ApiServices().getStates(),
                future: GetCity,
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
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AdminCreateSociety(
                                    city: snapshot.data![index].name.toString(),
                                    state: widget.stateName,
                                    cityID:
                                        snapshot.data![index].cityId.toString(),
                                    stateID: widget.stateID,
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
