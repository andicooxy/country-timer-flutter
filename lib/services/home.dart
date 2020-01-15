import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Country Time App"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ) ,
      body: Center(
        child: Text("Here we are lesone 7",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "IndieFlower",
              color: Colors.purple,
              letterSpacing: 2.3,
              fontSize: 20.0
        ),
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ print("you clicked me");},
        child: Text("Add"),),
    );
  }

}

