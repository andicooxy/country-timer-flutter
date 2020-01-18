import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String url;
  String time;
  bool isDayTime;
  String flag;
  WorldTime({this.location, this.url, this.flag});

  List<WorldTime> getSampleList(){
    return [ WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
      WorldTime(url: 'Africa/Accra', location: 'Accra', flag: 'ghana.png'),
      WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'germany.png'),
      WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
      WorldTime(url: 'Africa/Johannesburg', location: 'Johannesburg', flag: 'south_africa.png'),
      WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
      WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
      WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
      WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
      WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
      WorldTime(url: 'Africa/Abidjan', location: 'Abidjan', flag: 'ivory_coast.png'),
      WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
      WorldTime(url: 'America/Rio_Branco', location: 'Rio_Branco', flag: 'brazil.png'),
      WorldTime(url: 'America/Havana', location: 'Havana', flag: 'cuba.png'),
    ];
  }
  Future <void> getTime() async{
    try{
      print('strting....');
      Response response = await get("http://worldtimeapi.org/api/timezone/$url");
      Map data = jsonDecode(response.body);
      // get datetime 
      print(data);

      // get properties from json
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set the time property
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    }catch(e){
      print(e);
      time ="count not get time";
    }
  }
}