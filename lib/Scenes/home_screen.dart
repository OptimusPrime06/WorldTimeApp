import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/backgroundImages/night.jpeg'),
              fit: BoxFit.cover
          ),

        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'This home Screen',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.white
                ),

              ),

              SizedBox(height: 5.0),

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
                              color: Colors.grey[400]
                            ),

                          ),

                        ],

                      ),

                    ),

                  ),

                ],
              ),

            ],
          ),
        ),

      ),

    );
  }
}