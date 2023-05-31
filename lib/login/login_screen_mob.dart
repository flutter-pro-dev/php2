import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:society/utils/constants/constants.dart';

class LogINScreenOTP extends StatefulWidget {
  const LogINScreenOTP({super.key});

  @override
  State<LogINScreenOTP> createState() => _LogINScreenOTPState();
}

class _LogINScreenOTPState extends State<LogINScreenOTP> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: kblue, // status bar color
    ));
    return Scaffold(
      backgroundColor: Color(0xFFf2f6f8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/images/logg1.jpg",
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hi!",
                          style: TextStyle(
                              color: kblue,
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              color: kblue,
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Im wating for you Please enter you details",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Container(
                    //   margin: EdgeInsets.symmetric(vertical: 10),
                    //   padding: EdgeInsets.symmetric(horizontal: 10),
                    //   height: 45,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(50)),
                    //   child: Center(
                    //     child: Row(
                    //       children: [
                    //         Icon(
                    //           FontAwesomeIcons.circleUser,
                    //           color: Colors.grey,
                    //         ),
                    //         SizedBox(
                    //             height: 45,
                    //             width: 60,
                    //             child: TextField(
                    //               decoration:
                    //                   InputDecoration(hintText: "   Email"),
                    //             ))
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kblue,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.lock,
                              color: Colors.grey,
                            ),
                            SizedBox(
                                height: 45,
                                width: 60,
                                child: TextField(
                                  decoration:
                                      InputDecoration(hintText: "   Enter OPT"),
                                  keyboardType: TextInputType.number,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kblue,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          "Verifi",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/logg2.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
