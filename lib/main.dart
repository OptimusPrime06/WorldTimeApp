import 'package:flutter/material.dart';
import 'package:world_time_app/app_routing.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.splashScreen,
    onGenerateRoute: AppRoutes.generateRoute,
  ));
}

