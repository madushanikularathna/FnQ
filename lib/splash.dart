import 'dart:async';
import 'package:Arogya/home.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

// ignore: camel_case_types
class _splashscreenState extends State<splashscreen> {
  @override
  void initState(){
    super.initState();
  Timer(Duration(seconds: 3), (){
  Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => homepage(),
  ));
  });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Text(
          "Q & A",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),
        )
      )
    );
  }
}