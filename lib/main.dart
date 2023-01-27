import 'package:adkari/constants.dart';
import 'package:adkari/starting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: kPrimaryColor));
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      title: 'Adkari',
      home: StartingPage(),
    ),
  );
}
