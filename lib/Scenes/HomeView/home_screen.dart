import 'package:flutter/material.dart';
import 'package:world_time_app/Domain/Entities/city_entity.dart';
import 'package:world_time_app/Scenes/HomeView/home_view_model.dart';


class HomeScreen extends StatefulWidget {

  final HomeViewModelMiddleWare Function(CityEntity cityData) viewModelFactory;

  const HomeScreen({required this.viewModelFactory});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  late HomeViewModelMiddleWare viewModel;
  bool _isInitialized = false;

  void initializeViewModel() {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final cityData = arguments['cityData'];
    viewModel = widget.viewModelFactory(cityData);
    _isInitialized = true;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _isInitialized ? _isInitialized = true : initializeViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: viewModel.isMorning() ? AssetImage('assets/backgroundImages/morning.jpg') : AssetImage('assets/backgroundImages/night.jpeg'),
              fit: BoxFit.cover
          ),

        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(
                    onPressed: () async {
                      dynamic newCityData = await Navigator.pushNamed(context, '/selectCountry');
                      setState(() {
                        viewModel.cityData = newCityData['cityData'];
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.pin_drop_outlined,
                            size: 30,
                            color: Colors.grey[400],
                          ),

                          Text(
                            'Select City',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),

                          ),

                        ],

                      ),

                    ),

                  ),

                ],
              ),

              SizedBox(height: 15.0,),

              Text(
                viewModel.cityData?.name ?? '',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 5
                    ),
                  ]
                ),

              ),

              SizedBox(height: 5.0,),

              Text(
                viewModel.cityData?.time ?? ' ',
                style: TextStyle(
                  fontSize: 82.0,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(5, 5),
                      blurRadius: 5
                    ),
                  ]
                ),

              ),

            ],
          ),

        ),

      ),

    );
  }
}