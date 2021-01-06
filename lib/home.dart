import 'package:Arogya/details.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {

  List<String> images = [
    "images/man3.jpg",
    "images/prevention.jpg",
    "images/testing.jpg",
    "images/more.jpg",
  ];
  Widget customcard(String problems, String image){
      return Padding(
        padding: EdgeInsets.all(
          20.0,
        ),
        child: InkWell(
          onTap: (){

            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => getjason(),
            ));
          },
          child: Material(
            color: Colors.lightBlueAccent,
            elevation: 10.0 ,
            borderRadius: BorderRadius.circular(18.0),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0, 
                    ) ,
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(900.0),
                      child: Container(
                        height: 200.0,
                       width: 200.0,
                        child: ClipOval(
                         child: Image(
                           fit: BoxFit.contain,
                            image: AssetImage(
                              image,
                            ),
                           ),
                         ),
                        ),
                      ),
                    ),
                  Center(
                    child: Text(
                      problems,
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontFamily: " Quando",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      "Frequently asked questions and Answers...",
                      style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontFamily: "Alike",
                      fontWeight: FontWeight.w500,
                    ),
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Arogya",
          style: TextStyle(
            fontSize: 26.0,
            color: Colors.white,
            fontFamily: "Alike",
            fontWeight: FontWeight.w700,
          ),
        ),

      ),
      body: ListView(
        children: [
          customcard("Spread", images[0]),
          customcard("Prevention", images[1]),
          customcard("Testing", images[2]),
          customcard("More", images[3]),
        ],
      ),
    );
  }
}