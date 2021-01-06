import 'package:Arogya/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Arogya',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    );
  }
}

    
