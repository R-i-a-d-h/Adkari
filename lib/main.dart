import 'package:adkari/constants.dart';
import 'package:adkari/praise_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'adkar_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: kPrimaryColor));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adkari',
      home: AdkarPage(
        title: 'أذكار المساء',
      ),
    ),
  );
}
