import 'dart:async';
import 'package:assignmenttwo/stack_exam.dart';
import 'package:flutter/material.dart';

class SplashScree extends StatefulWidget {
  const SplashScree({Key? key}) : super(key: key);

  @override
  State<SplashScree> createState() => _SplashScreeState();
}

class _SplashScreeState extends State<SplashScree> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => MyStack(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://i.gifer.com/6fr.gif",
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
