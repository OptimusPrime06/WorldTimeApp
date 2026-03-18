import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time_app/Constants/CountriesConsants/countries_constants.dart';
import 'package:world_time_app/Scenes/SplashScreenView/splash_screen_view_model.dart';
import 'dart:math';

import 'package:world_time_app/app_routing.dart';

class SplashScreen extends StatefulWidget {

  // Variables
  final SplashScreenViewModelMiddleWare viewModel;

  // Constructors
  const SplashScreen({required this.viewModel});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  // Variables
  late SplashScreenViewModelMiddleWare viewModel;

  // Private Functions
  void _getTime() async {
    await viewModel.getTimeFor(Constants.countries[Random().nextInt(Constants.countries.length)]);
    Navigator.pushReplacementNamed(context, AppRoutes.homeScreen, arguments: {
      'cityData' : viewModel.getCityData()
    });
  }

  // Life Cycle Functions
  @override
  void initState() {
    super.initState();
    viewModel = widget.viewModel;
    _getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCircle(
          size: 100.0,
          color: Colors.white,
        ),

      ),

    );
  }
}