import 'dart:developer';

import 'package:flutter/material.dart';

class FlatExpension extends StatefulWidget {
  const FlatExpension({Key? key}) : super(key: key);

  @override
  State<FlatExpension> createState() => _FlatExpensionState();
}

class _FlatExpensionState extends State<FlatExpension> {
  int started = 0;
  int ended = 0;

  TextEditingController _start = TextEditingController();
  TextEditingController _end = TextEditingController();
  @override
  Widget build(BuildContext context) {
    log("heei");

    return Scaffold(
      appBar: AppBar(
        title: Text("Flat Members"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              title: const Text('galaxy One.'),
              children: <Widget>[
                Builder(
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          // TextField(
                          //   decoration:
                          //       InputDecoration(hintText: "Find By number"),
                          // ),

                          for (int i = 1; i <= 4; i++)
                            Container(
                              child: ExpansionTile(
                                title: Text('Floors .' + i.toString()),
                                children: <Widget>[
                                  Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                        padding: const EdgeInsets.all(24),
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  height: 40,
                                                  width: 60,
                                                  child: TextField(
                                                    onChanged: (value) {
                                                      if (value != "") {
                                                        started =
                                                            int.parse(value);
                                                        setState(() {});
                                                      } else {
                                                        setState(() {});
                                                      }
                                                    },
                                                    keyboardType:
                                                        TextInputType.number,
                                                    controller: _start,
                                                    decoration: InputDecoration(
                                                      hintText: 'Start',
                                                      border:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          width: 3,
                                                        ), //<-- SEE HERE
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7.0),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 0.5,
                                                                color: Colors
                                                                    .grey), //<-- SEE HERE
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 40,
                                                  width: 60,
                                                  child: TextField(
                                                    onChanged: (value) {
                                                      if (value != "") {
                                                        ended =
                                                            int.parse(value);
                                                        setState(() {});
                                                      } else {
                                                        setState(() {});
                                                      }
                                                    },
                                                    keyboardType:
                                                        TextInputType.number,
                                                    controller: _end,
                                                    decoration: InputDecoration(
                                                      hintText: 'End',
                                                      border:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          width: 3,
                                                        ), //<-- SEE HERE
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7.0),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 0.5,
                                                                color: Colors
                                                                    .grey), //<-- SEE HERE
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 30),
                                            Text(
                                                "Please enter the above field"),
                                            //

                                            for (int i = 1;
                                                i <= ended - started;
                                                i++)
                                              Container(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      hintText: i.toString()),
                                                ),
                                              ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('galaxy Two.'),
              children: <Widget>[
                Builder(
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(24),
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
    );
  }
}
