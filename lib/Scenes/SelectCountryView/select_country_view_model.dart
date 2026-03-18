import 'package:world_time_app/Constants/CountriesConsants/countries_constants.dart';
import 'package:world_time_app/Domain/Entities/city_entity.dart';
import 'package:world_time_app/Domain/Entities/country_entity.dart';
import 'package:world_time_app/Domain/UseCases/WorldTimeUseCase/world_time_use_case.dart';

abstract class SelectCountryViewModelMiddleWare {

  // Variables
  List<CountryEntity> get countries;
  WorldTimeUseCaseInterface get useCase;

  //Functions
  Future<CityEntity> getTimeFor(CountryEntity city);

}

class SelectCountryViewModel extends SelectCountryViewModelMiddleWare {

  //Variables
  @override
  List<CountryEntity> countries = Constants.countries; // Array of countries data
  @override
  final WorldTimeUseCaseInterface useCase; // World Time Use Case

  // Constructors
  SelectCountryViewModel({required this.useCase});

  // Public functions
  @override
  Future<CityEntity> getTimeFor(CountryEntity city) async { //Get city time
    final url = Constants.createURL(city.cityURL);
    final cityData = await useCase.getWorldTimeWith(url, city.cityName);
    return cityData;
  }

}