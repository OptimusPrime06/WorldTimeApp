import 'package:flutter/material.dart';
import 'package:world_time_app/Data/WorldTimeRepo/world_time_repo.dart';
import 'package:world_time_app/Domain/UseCases/WorldTimeUseCase/world_time_use_case.dart';
import 'package:world_time_app/Scenes/HomeView/home_screen.dart';
import 'package:world_time_app/Scenes/HomeView/home_view_model.dart';
import 'package:world_time_app/Scenes/SelectCountryView/select_country.dart';
import 'package:world_time_app/Scenes/SelectCountryView/select_country_view_model.dart';
import 'package:world_time_app/Scenes/SplashScreenView/splash_screen.dart';
import 'package:world_time_app/Scenes/SplashScreenView/splash_screen_view_model.dart';

import 'Domain/Entities/city_entity.dart';

class AppRoutes {
  static const String splashScreen = '/splash-screen';
  static const String homeScreen = '/home';
  static const String selectCountry = '/select-country';


  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case splashScreen:
        return _build(SplashScreen(
            viewModel: SplashScreenViewModel(
                worldTimeUseCase: WorldTimeUseCase(
                    worldTimeRepo: WorldTimeRepo()
                )
            )
        )
        );

      case homeScreen:
        final args = settings.arguments as Map<String, dynamic>;
        final CityEntity cityData = args['cityData'];
        return _build(
          HomeScreen(
            viewModel: HomeViewModel(cityData: cityData)
          ),
        );

      case selectCountry:
        return _build(SelectCountry(
            viewModel: SelectCountryViewModel(
                useCase: WorldTimeUseCase(
                    worldTimeRepo: WorldTimeRepo()
                )
            )
          )
        );

      default:
      // Fallback to splash screen if route is not found
        return _build(
          SplashScreen(
            viewModel: SplashScreenViewModel(
              worldTimeUseCase: WorldTimeUseCase(
                worldTimeRepo: WorldTimeRepo(),
              ),
            ),
          ),
        );
    }
  }

  static MaterialPageRoute _build(Widget page) {
    return MaterialPageRoute(builder: (_) => page, fullscreenDialog: true);
  }

}