import 'package:flutter/material.dart';
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data ={};
  @override
  Widget build(BuildContext context) {

  data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
  print("booolean pring");
  print(data);

  Color bgColor = data['isDayTime'] ? Colors.blue : Colors.indigo[700];
  String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
  String flag = data['flag'];

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(  
            image: DecorationImage( 
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ), 
          child: Padding(  
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(children: <Widget>[        
              FlatButton.icon(
                onPressed: () async{
                  dynamic result = await Navigator.pushNamed(context,'/list');
                  if(result != null){
                    setState(() {
                      data = {                          
                          'location': result['location'],
                          'isDayTime': result['isDayTime'],
                          'time': result['time'],
                          'flag': result['flag']
                        };
                    });
                  }
                },
                icon: Icon( 
                  Icons.edit_location,
                  color: Colors.grey[350],
                ), label: Text(
                  'Edit Location',
                  style: TextStyle( 
                    color: Colors.grey[350],
                  )),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/$flag'),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    data['location'],
                    style: TextStyle( 
                      fontFamily: "IndieFlower",
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                      color: Colors.white
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Text(
              data['time'],
              style: TextStyle(   
                color: Colors.white,
                fontSize: 66.0
              )
              )
            ],),
          ),
        ),
      ),
      backgroundColor: bgColor,
    );
  }
}

