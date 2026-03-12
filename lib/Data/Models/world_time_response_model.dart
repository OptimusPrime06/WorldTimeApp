import 'dart:convert';
import 'package:http/http.dart';

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

}