import 'package:world_time_app/Domain/Entities/country_entity.dart';

final class Constants {

  static List<CountryEntity> countries = <CountryEntity>[
    CountryEntity(cityName: 'Cairo', cityURL: 'Egypt', flagURL: 'EG.png'),
    CountryEntity(cityName: 'New York', cityURL: 'America/New_York', flagURL: 'US.png'),
    CountryEntity(cityName: 'London', cityURL: 'Europe/London', flagURL: 'UK.png'),
    CountryEntity(cityName: 'Istanbul', cityURL: 'Europe/Istanbul', flagURL: 'TK.png'),
    CountryEntity(cityName: 'Tehran', cityURL: 'Asia/Tehran', flagURL: 'IR.png'),
    CountryEntity(cityName: 'Beijing', cityURL: 'Asia/Chongqing', flagURL: 'CH.png'),
    CountryEntity(cityName: 'Gaza', cityURL: 'Asia/Gaza', flagURL: 'PL.png'),
    CountryEntity(cityName: 'Beirut', cityURL: 'Asia/Beirut', flagURL: 'LB.png'),
    CountryEntity(cityName: 'Manama', cityURL: 'Asia/Bahrain', flagURL: 'BH.png'),
    CountryEntity(cityName: 'Jerusalem', cityURL: 'Asia/Jerusalem', flagURL: 'PL.png'),
    CountryEntity(cityName: 'Seoul', cityURL: 'Asia/Seoul', flagURL: 'SK.png'),
    CountryEntity(cityName: 'Pyongyang', cityURL: 'Asia/Pyongyang', flagURL: 'NK.png'),
    CountryEntity(cityName: 'Kuwait', cityURL: 'Asia/Kuwait', flagURL: 'KW.png'),
    CountryEntity(cityName: 'Qatar', cityURL: 'Asia/Qatar', flagURL: 'QA.png'),
    CountryEntity(cityName: 'Riyadh', cityURL: 'Asia/Riyadh', flagURL: 'SA.png'),
    CountryEntity(cityName: 'Dubai', cityURL: 'Asia/Dubai', flagURL: 'UAE.png'),
  ];

  static Uri createURL(String cityName) {
    return Uri.parse('https://time.now/developer/api/timezone/$cityName');
  }

}