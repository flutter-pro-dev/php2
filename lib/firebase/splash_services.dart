import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:society/auth/login_phone.dart';
import 'package:society/other/deshboard/socity_admin.dart';

class SplashServices {
  void isLogin(context) {
    //
    //
    final auth = FirebaseAuth.instance;
    //
    final user = auth.currentUser;
    //
    if (user != null) {
      //
      // Timer(
      //   Duration(seconds: 3),
      //   () => Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => HomePage(
      //         title: "Home",
      //       ),
      //     ),
      //   ),
      // );

      Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SocietyAdmin(),
          ),
        ),
      );
    } else {
      Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LogPhone(),
          ),
        ),
      );
    }
  }
}
