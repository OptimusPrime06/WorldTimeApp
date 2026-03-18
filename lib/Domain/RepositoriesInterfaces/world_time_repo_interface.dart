import 'package:world_time_app/Domain/Entities/city_entity.dart';

abstract class WorldTimeRepoInterface {
  Future<CityEntity> performWorldTimeGetRequest(Uri url, String cityName);
}