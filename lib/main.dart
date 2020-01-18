import 'package:country_times/services/country_list.dart';
import 'package:country_times/services/home.dart';
import 'package:country_times/services/loading.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  debugShowCheckedModeBanner: false,
  routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/list': (context) => CountryList(),
    },
  ),
);