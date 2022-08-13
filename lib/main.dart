import 'package:assignmenttwo/listview.builder.dart';
import 'package:assignmenttwo/stack_exam.dart';
import 'package:assignmenttwo/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myTODO(),
    );
  }
}
