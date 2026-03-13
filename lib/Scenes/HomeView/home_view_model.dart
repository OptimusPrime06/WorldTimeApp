import 'package:world_time_app/Domain/Entities/city_entity.dart';

abstract class HomeViewModelMiddleWare {
  //Variables
  late CityEntity? cityData;

  // Functions
  bool isMorning();
}

class HomeViewModel extends HomeViewModelMiddleWare {

  //Constructors
  HomeViewModel({required CityEntity? cityData}) {
    this.cityData = cityData;
  }

  // Public Functions
  @override
  bool isMorning() {
    return cityData!.time.endsWith('AM') ? true : false ;
  }

}