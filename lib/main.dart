import 'package:flutter/material.dart';
import 'package:world_time_app/Scenes/HomeView/home_screen.dart';
import 'package:world_time_app/Scenes/SelectCountryView/select_country.dart';
import 'package:world_time_app/Scenes/SplashScreenView/splash_screen.dart';

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

