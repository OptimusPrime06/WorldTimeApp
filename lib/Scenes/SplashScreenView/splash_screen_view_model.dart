import 'package:world_time_app/Constants/CountriesConsants/countries_constants.dart';
import 'package:world_time_app/Data/Models/world_time_response_model.dart';
import 'package:world_time_app/Domain/Entities/country_entity.dart';
import 'package:world_time_app/Domain/UseCases/WorldTimeUseCase/world_time_use_case.dart';
import 'package:world_time_app/Domain/Entities/city_entity.dart';

abstract class SplashScreenViewModelMiddleWare {

  //Variables
  late WorldTimeUseCaseInterface _useCase;
  CityEntity? _cityData;

  // Functions
  Future<void> getTimeFor(CountryEntity cityURL);
  CityEntity getCityData();

}

class SplashScreenViewModel extends SplashScreenViewModelMiddleWare {

  // Constructors
  SplashScreenViewModel({required WorldTimeUseCaseInterface worldTimeUseCase}) {
    _useCase = worldTimeUseCase;
  }

  //Public Functions
  @override //Get World time => Call use case
  Future<void> getTimeFor(CountryEntity city) async {
    final url = Constants.createURL(city.cityURL);
    _cityData = await _useCase.getWorldTimeWith(url, city.cityName);
  }

  @override   // Get Data => Calls use case to return data of the city
  CityEntity getCityData() => _cityData ?? CityEntity(name: "", time: "", flagImage: "");

}