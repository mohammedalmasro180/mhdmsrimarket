import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobithice/Page/Catogery.dart';
import 'package:mobithice/Page/Details.dart';
import 'package:mobithice/Page/HomeScreen.dart';
import 'package:mobithice/Page/Login.dart';
import 'package:mobithice/Page/loginpage.dart';
import 'package:mobithice/Page/shered.dart';
import 'package:mobithice/Page/signup.dart';
import 'package:mobithice/Page/test.dart';
import 'package:mobithice/Page/tras.dart';
import 'package:mobithice/Widget/prolist.dart';
import 'package:mobithice/Widget/serash.dart';

import 'Page/samsung.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HiTic',
      home: loginui()

    );
  }
}
