import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar( title: Text("My Test application"),
    centerTitle: true,
  ),
  body: Center(child: Text("This is my body"),),
  floatingActionButton: FloatingActionButton(child: Text("Click Me"),)
  ),
));

