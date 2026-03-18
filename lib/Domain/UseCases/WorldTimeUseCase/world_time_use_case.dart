import 'package:world_time_app/Data/Models/world_time_response_model.dart';
import 'package:world_time_app/Domain/Entities/city_entity.dart';
import 'package:world_time_app/Domain/RepositoriesInterfaces/world_time_repo_interface.dart';

abstract class WorldTimeUseCaseInterface {
  Future<CityEntity> getWorldTimeWith(Uri url, String cityName);
}

class WorldTimeUseCase extends WorldTimeUseCaseInterface {

  final WorldTimeRepoInterface worldTimeRepo;

  WorldTimeUseCase({required this.worldTimeRepo});

  @override
  Future<CityEntity> getWorldTimeWith(Uri url, String cityName) async {
    final result = await worldTimeRepo.performWorldTimeGetRequest(url, cityName);
    return result;
  }

}