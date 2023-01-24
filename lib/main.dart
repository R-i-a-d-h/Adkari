import 'package:adkari/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: kPrimaryColor));
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adkari',
      home: HomePage(),
    ),
  );
}
