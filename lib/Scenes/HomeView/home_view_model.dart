import 'package:world_time_app/Models/city_entity.dart';

abstract class HomeViewModelMiddleWare {
  late CityEntity? cityData;
}
class HomeViewModel extends HomeViewModelMiddleWare {

  HomeViewModel({required CityEntity? cityData}) {
    this.cityData = cityData;
  }

}