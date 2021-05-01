import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobithice/Page/Catogery.dart';
import 'package:mobithice/Page/Details.dart';
import 'package:mobithice/Page/HomeScreen.dart';
import 'package:mobithice/Page/test.dart';
import 'package:mobithice/Page/tras.dart';
import 'package:mobithice/Widget/prolist.dart';

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
      home: HomeScreen()

    );
  }
}
