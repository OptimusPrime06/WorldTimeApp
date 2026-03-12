import 'package:world_time_app/Domain/WorldTimeUseCase/world_time_use_case.dart';
import 'package:world_time_app/Models/city_entity.dart';

abstract class SplashScreenViewModelMiddleWare {
  late WorldTimeUseCaseMiddleWare _useCase;
  CityEntity? _cityData;

  Future<void> getTimeFor(String cityName);
  CityEntity getCityData();
}

class SplashScreenViewModel extends SplashScreenViewModelMiddleWare {

  SplashScreenViewModel({required WorldTimeUseCaseMiddleWare worldTimeUseCase}) {
    _useCase = worldTimeUseCase;
  }

  //Private Functions
  //Create URL => Private
  Uri _createURL(String cityName) {
    return Uri.parse('https://time.now/developer/api/timezone/$cityName');
  }

  //Get World time => Call use case
  @override
  Future<void> getTimeFor(String cityName) async {
    final url = _createURL(cityName);
    _cityData = CityEntity.mapFromWorldModel(await _useCase.getWorldTimeWith(url), cityName);
  }

  //Public Functions
  // Get Data => Calls use case to return data Return Data (public)
  @override
  CityEntity getCityData()  => _cityData ?? CityEntity(name: "", time: "", flagImage: "");
  
  
  
  
  
  

}