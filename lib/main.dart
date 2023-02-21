import 'package:flutter/material.dart';
import 'package:simple_resume_form/screen/screen1.dart';
import 'package:simple_resume_form/screen/screen2.dart';
import 'package:simple_resume_form/screen/screen3.dart';
import 'package:simple_resume_form/screen/screen4.dart';
import 'home.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Home(),
        '1':(context) => Screen1(),
        '2':(context) => Screen(),
        '3':(context) => Screen3(),
        '4':(context) => Screen4(),
      },
    ),
  );
}