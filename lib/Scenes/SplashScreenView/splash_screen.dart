import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time_app/Data/WorldTimeRepo/world_time_repo.dart';
import 'package:world_time_app/Domain/WorldTimeUseCase/world_time_use_case.dart';
import 'package:world_time_app/Scenes/SplashScreenView/splash_screen_view_model.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late SplashScreenViewModelMiddleWare viewModel;


  void getTime() async {
    await viewModel.getTimeFor('Egypt');
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'cityData' : viewModel.getCityData()
    });
  }

  @override
  void initState() {
    super.initState();
    viewModel = SplashScreenViewModel(worldTimeUseCase: WorldTimeUseCase(worldTimeRepo: WorldTimeRepo()));
    getTime();
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