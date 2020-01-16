
import 'dart:math';

import 'package:country_times/models/food.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Food> foods= [
    Food(name: "Banku",phone: "+233 5005 339 66",avater: "space-1.jpg", location: "Madina"),
    Food(name: "Gob3",phone: "+233 5005 339 00",avater: "space-2.jpg", location: "Fafa's place"),
    Food(name: "Kofi Broke Man",phone: "+233 4005 339 99", location: "Bayere Junction"),
    Food(name: "Jollof", location: "Bayere Juncion",avater: "logo.jpeg", phone: "+233 5445 337 66"),
    Food(name: "Fufu", location: "Dzorulo Primary School", phone: "+233 5005 339 91"),
    Food(name: "Fried Yam", location: "Bayir3 junction", phone: "+233 4995 339 66"),
  ];
  int quantity = 0;
    @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Country Foods",
          style: TextStyle(
                 fontFamily: "IndieFlower",
        ),),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
        
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Center(
             child: CircleAvatar(
               radius: 40.0,
               backgroundImage: AssetImage("logo.jpeg"),
               ),
           ),
           Divider(
             color: Colors.grey[800],
             height: 45.0,),
           Center(
             child:Text( "Your Food Details",
             style: TextStyle(
               color: Colors.grey[200],
               fontFamily: "IndieFlower",
             ),       
             ),
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey[700],
                letterSpacing: 2.0),
            ),
            SizedBox(height: 4.0,),
            Text(
              "${foods[quantity].name}",
              style: TextStyle(
                color: Colors.grey[500],         
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "LOCATION",
              style: TextStyle(
                color: Colors.grey[700],
                letterSpacing: 2.0),
            ),
            SizedBox(height: 4.0,),
            Text(
              "${foods[quantity].location}",
              style: TextStyle(
                color: Colors.grey[500],         
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  '${foods[quantity].phone}',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 9.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
         ], 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.rotate_right),
        onPressed: (){
          setState(() {  
            quantity = quantity == 5 ? 0 : quantity+=1;    
          });
        },
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
