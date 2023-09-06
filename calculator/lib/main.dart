import 'dart:async';

import 'package:calculator/homescreen.dart';
import 'package:calculator/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: splashscreen(),
  ));

  Timer(const Duration(seconds: 2), () {
    runApp(
      MaterialApp(
        home: homescreen(),
        routes: {
          homescreen.routename: (BuildContext context) =>homescreen(),

        },
      ),
    );
  });




}



