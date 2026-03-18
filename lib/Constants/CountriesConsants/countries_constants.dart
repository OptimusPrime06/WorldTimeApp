import 'package:world_time_app/Constants/ImageConstants/images_constants.dart';
import 'package:world_time_app/Constants/StringsConstants/string_constants.dart';
import 'package:world_time_app/Constants/UrlConstants/url_constants.dart';
import 'package:world_time_app/Domain/Entities/country_entity.dart';

final class CountriesConstants {

  static List<CountryEntity> countries = <CountryEntity>[
    CountryEntity(
      cityName: StringConstants.cairoCityName,
      cityURL: UrlConstants.egyptCityURL,
      flagURL: ImagesConstants.cairoFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.newYorkCityName,
      cityURL: UrlConstants.newYorkCityURL,
      flagURL: ImagesConstants.newYorkFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.londonCityName,
      cityURL: UrlConstants.londonCityURL,
      flagURL: ImagesConstants.londonFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.istanbulCityName,
      cityURL: UrlConstants.istanbulCityURL,
      flagURL: ImagesConstants.istanbulFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.tehranCityName,
      cityURL: UrlConstants.tehranCityURL,
      flagURL: ImagesConstants.tehranFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.beijingCityName,
      cityURL: UrlConstants.beijingCityURL,
      flagURL: ImagesConstants.beijingFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.gazaCityName,
      cityURL: UrlConstants.gazaCityURL,
      flagURL: ImagesConstants.gazaFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.beirutCityName,
      cityURL: UrlConstants.beirutCityURL,
      flagURL: ImagesConstants.beirutFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.manamaCityName,
      cityURL: UrlConstants.manamaCityURL,
      flagURL: ImagesConstants.manamaFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.jerusalemCityName,
      cityURL: UrlConstants.jerusalemCityURL,
      flagURL: ImagesConstants.jerusalemFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.seoulCityName,
      cityURL: UrlConstants.seoulCityURL,
      flagURL: ImagesConstants.seoulFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.pyongyangCityName,
      cityURL: UrlConstants.pyongyangCityURL,
      flagURL: ImagesConstants.pyongyangFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.kuwaitCityName,
      cityURL: UrlConstants.kuwaitCityURL,
      flagURL: ImagesConstants.kuwaitFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.qatarCityName,
      cityURL: UrlConstants.qatarCityURL,
      flagURL: ImagesConstants.qatarFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.riyadhCityName,
      cityURL: UrlConstants.riyadhCityURL,
      flagURL: ImagesConstants.riyadhFlagImage,
    ),

    CountryEntity(
      cityName: StringConstants.dubaiCityName,
      cityURL: UrlConstants.dubaiCityURL,
      flagURL: ImagesConstants.dubaiFlagImage,
    ),

  ];

}
