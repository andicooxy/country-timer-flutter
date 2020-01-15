import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(centerTitle: true,
    title: Text("Country Applicaiton"),
    backgroundColor: Colors.amber[800],),
    body: Center(
      child: Text("Here I am again.",
        style: TextStyle(
          color: Colors.red[300],
          letterSpacing: 2.0,
          fontFamily: "IndieFlower",
          fontWeight: FontWeight.bold
        ),
    ),
    ) ,
    floatingActionButton: FloatingActionButton(
      backgroundColor:  Colors.amber[300],
      child: Center(
        child:  Text("Add"),),
    ),
  ),
));