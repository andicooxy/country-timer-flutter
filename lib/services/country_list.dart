
import 'package:country_times/models/world_time.dart';
import 'package:flutter/material.dart';

class CountryList extends StatefulWidget {
  @override
  _CountryListState createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  List<WorldTime> locations  = WorldTime().getSampleList();

 void updateTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context,
                  {'location': instance.location,
                   'flag': instance.flag,
                   'isDayTime': instance.isDayTime,
                   'time': instance.time}
    );
 }

  @override
  void initState() {
      super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: Text('Select Location'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[500],
      ),
      body: ListView.builder(
        itemBuilder: (context,index){
          return Padding(
            child: Card(
              child: ListTile(
              title: Text(locations[index].location),
              onTap: (){
                updateTime(index);
              },  
              leading: CircleAvatar( 
                backgroundImage: AssetImage('assets/${locations[index].flag}'),
              ),              
              ),
              ),
            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
          );
        },
        itemCount: locations.length,        
        ),
    );
  }
}