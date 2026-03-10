import 'package:flutter/material.dart';

class SelectCountry extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('Country list'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}