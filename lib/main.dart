import 'package:flutter/material.dart';
import 'package:world_time_app/Scenes/home_screen.dart';
import 'package:world_time_app/Scenes/select_country.dart';
import 'package:world_time_app/Scenes/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => SplashScreen(),
      '/home' : (context) => HomeScreen(),
      '/selectCountry' : (context) => SelectCountry(),
    },
  ));
}

