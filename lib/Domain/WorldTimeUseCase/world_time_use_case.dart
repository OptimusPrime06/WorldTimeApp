import 'package:world_time_app/Data/Models/world_time_response_model.dart';
import 'package:world_time_app/Data/WorldTimeRepo/world_time_repo.dart';

abstract class WorldTimeUseCaseMiddleWare {
  Future<WorldTimeResponseModel> getWorldTimeWith(Uri url);
}

class WorldTimeUseCase extends WorldTimeUseCaseMiddleWare {
  final WorldTimeRepoMiddleWare worldTimeRepo;

  WorldTimeUseCase({required this.worldTimeRepo});

  @override
  Future<WorldTimeResponseModel> getWorldTimeWith(Uri url) {
    final result = worldTimeRepo.performWorldTimeGetRequest(url);
    return result;
  }

}