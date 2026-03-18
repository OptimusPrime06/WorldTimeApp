import 'dart:convert';
import 'package:http/http.dart';
import '../../Domain/Entities/city_entity.dart';
import 'package:intl/intl.dart';

final class WorldTimeResponseModel {
  final String dateTime;
  final String utcOffset;

  WorldTimeResponseModel({required this.dateTime, required this.utcOffset});

  //Decode From JSON
  factory WorldTimeResponseModel.fromJson(Response json) {
    Map responseData = jsonDecode(json.body);
    WorldTimeResponseModel result  = WorldTimeResponseModel(
        dateTime: responseData['datetime'],
        utcOffset: responseData['utc_offset'],
    );
    return result;
  }

  static CityEntity mapFromWorldModel(WorldTimeResponseModel model, String cityName) {
    DateTime now = DateTime.parse(model.dateTime);
    int offSet = int.tryParse(model.utcOffset.substring(1, 3)) ?? 0;
    bool isNegative = model.utcOffset.startsWith('-');
    offSet = isNegative ? -offSet : offSet;
    now = now.add(Duration(hours: offSet));

    return CityEntity(
      name: cityName,
      time: DateFormat.jm().format(now),
      flagImage: '$cityName.png',
    );
  }

}