import 'package:http/http.dart';
import 'package:world_time_app/Data/Models/world_time_response_model.dart';
import 'package:world_time_app/Domain/Entities/city_entity.dart';
import 'package:world_time_app/Domain/RepositoriesInterfaces/world_time_repo_interface.dart';

class WorldTimeRepo extends WorldTimeRepoInterface {

  @override
  Future<CityEntity> performWorldTimeGetRequest(Uri url, String cityName) async {
    Response response = await get(url);
    final responseModel = WorldTimeResponseModel.fromJson(response);
    final cityData = WorldTimeResponseModel.mapFromWorldModel(responseModel, cityName);
    return cityData;
  }

}
