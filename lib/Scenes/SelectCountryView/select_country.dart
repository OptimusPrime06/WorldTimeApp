import 'package:flutter/material.dart';
import 'package:world_time_app/Domain/Entities/city_entity.dart';
import 'package:world_time_app/Scenes/SelectCountryView/select_country_view_model.dart';

class SelectCountry extends StatefulWidget {

  final SelectCountryViewModelMiddleWare viewModel;

  const SelectCountry({required this.viewModel});

  @override
  State<StatefulWidget> createState() => _SelectCountryState();

}

class _SelectCountryState extends State<SelectCountry> {

  // Variables
  late SelectCountryViewModelMiddleWare viewModel;

  //Private Functions
  void _updateTime(index) async {
    final CityEntity cityData = await viewModel.getTimeFor(viewModel.countries[index]);
    Navigator.pop(context,{
      'cityData' : cityData,
    });
  }

  // Life Cycle Functions
  @override
  void initState() {
    super.initState();
    viewModel = widget.viewModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: viewModel.countries.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    _updateTime(index);
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(viewModel.countries[index].flagURL),
                  ),
                  title: Text(
                    viewModel.countries[index].cityName,
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),

                  ),

                ),
        
              ),

            );
          },
        
        ),

      ),

    );
  }
}