import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class getjason extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/Spread.json"),
      builder: (context, snapshot) {

        var mydata = json.decode(snapshot.data.toString());
        if(mydata == null){
          return Scaffold(
            body: Center(
              child: Text(
                "Loading",
              ),
            ),
          );
        }else{
          return page();
        }
      },
    );
  }
}

class page extends StatefulWidget {
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {

  Widget choicebutton(){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: 50.0,
      ),
      child: MaterialButton(
        onPressed: (){},
        child: Text(
          "option 1"
        ),
        color: Colors.blueGrey,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
             // padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
             ),
              child: Text(
                "Spread",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Quando",
                ),
              ),
            ),
          ),

          Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  choicebutton(),
                ],
              ),
              //decoration: BoxDecoration(
               // color: Colors.white,
              ),
            ),
         // ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      )
    );

  }
}

