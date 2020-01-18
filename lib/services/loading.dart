import 'package:country_times/models/world_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget{
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setWorldTime() async {
    WorldTime world_time = WorldTime(location: "Accra", url: "Africa/Accra");
    await world_time.getTime();
    Navigator.pushReplacementNamed(context,'/home',arguments:{
      'time': world_time.time,
      'location': world_time.location,
      'flag': world_time.flag,
      'isDayTime': world_time.isDayTime
    });
  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
              child: SpinKitCubeGrid(
                color: Colors.white,
                size: 40.0,         
          ),
      ),
        backgroundColor: Colors.blue[300],    
    );
  }
}