import 'package:http/http.dart';
import 'package:world_time_app/Data/Models/world_time_response_model.dart';

abstract class WorldTimeRepoMiddleWare {
  Future<WorldTimeResponseModel> performWorldTimeGetRequest(Uri url);
}

class WorldTimeRepo extends WorldTimeRepoMiddleWare {

  @override
  Future<WorldTimeResponseModel> performWorldTimeGetRequest(Uri url) async {
    Response response = await get(url);
    return WorldTimeResponseModel.fromJson(response);
  }

}

