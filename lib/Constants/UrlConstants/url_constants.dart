final class UrlConstants {
  static const String worldTimeURL = 'https://time.now/developer/api/timezone/';

  static Uri createURL(String cityName) {
    return Uri.parse('{$worldTimeURL$cityName}');
  }

  static const String egyptCityURL = 'Egypt';
  static const String newYorkCityURL = 'America/New_York';
  static const String londonCityURL = 'Europe/London';
  static const String istanbulCityURL = 'Europe/Istanbul';
  static const String tehranCityURL = 'Asia/Tehran';
  static const String beijingCityURL = 'Asia/Chongqing';
  static const String gazaCityURL = 'Asia/Gaza';
  static const String beirutCityURL = 'Asia/Beirut';
  static const String manamaCityURL = 'Asia/Bahrain';
  static const String jerusalemCityURL = 'Asia/Jerusalem';
  static const String seoulCityURL = 'Asia/Seoul';
  static const String pyongyangCityURL = 'Asia/Pyongyang';
  static const String kuwaitCityURL = 'Asia/Kuwait';
  static const String qatarCityURL = 'Asia/Qatar';
  static const String riyadhCityURL = 'Asia/Riyadh';
  static const String dubaiCityURL = 'Asia/Dubai';
}