import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const kblue = const Color(0xFF1b77de);

final myTheme = SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  systemNavigationBarColor: kblue, // navigation bar color
  statusBarColor: kblue, // status bar color
));
