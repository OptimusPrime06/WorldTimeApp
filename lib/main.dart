import 'package:flutter/material.dart';
import 'package:world_time_app/Data/WorldTimeRepo/world_time_repo.dart';
import 'package:world_time_app/Domain/UseCases/WorldTimeUseCase/world_time_use_case.dart';
import 'package:world_time_app/Scenes/HomeView/home_screen.dart';
import 'package:world_time_app/Scenes/HomeView/home_view_model.dart';
import 'package:world_time_app/Scenes/SelectCountryView/select_country.dart';
import 'package:world_time_app/Scenes/SelectCountryView/select_country_view_model.dart';
import 'package:world_time_app/Scenes/SplashScreenView/splash_screen.dart';
import 'package:world_time_app/Scenes/SplashScreenView/splash_screen_view_model.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => SplashScreen(viewModel: SplashScreenViewModel(
          worldTimeUseCase: WorldTimeUseCase(worldTimeRepo: WorldTimeRepo()
          )
        ),
      ),

      '/home' : (context) => HomeScreen(viewModelFactory: (cityData) => HomeViewModel(cityData: cityData)),

      '/selectCountry' : (context) => SelectCountry(viewModel: SelectCountryViewModel(
          useCase: WorldTimeUseCase(worldTimeRepo: WorldTimeRepo())
        ),
      ),
    },
  ));
}

