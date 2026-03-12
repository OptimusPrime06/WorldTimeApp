import 'package:world_time_app/Data/Models/world_time_response_model.dart';
import 'package:intl/intl.dart';

final class CityEntity {
  final String name;
  final String time;
  final String flagImage;

  CityEntity({
    required this.name,
    required this.time,
    required this.flagImage,
  });

  static CityEntity mapFromWorldModel(WorldTimeResponseModel model, String cityName) {
    DateTime now = DateTime.parse(model.dateTime);
    int offSet = int.tryParse(model.utcOffset.substring(1,3)) ?? 0;
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