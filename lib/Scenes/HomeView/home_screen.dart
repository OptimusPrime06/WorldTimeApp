import 'package:flutter/material.dart';
import 'package:world_time_app/Scenes/HomeView/home_view_model.dart';


class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late HomeViewModelMiddleWare viewModel;

  bool isMorning() {
    return viewModel.cityData!.time.endsWith('AM') ? true : false ;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final arguments = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    viewModel = HomeViewModel(cityData: arguments['cityData']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: isMorning() ? AssetImage('assets/backgroundImages/morning.jpg') : AssetImage('assets/backgroundImages/night.jpeg'),
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
                    onPressed: () {
                      Navigator.pushNamed(context, '/selectCountry');
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