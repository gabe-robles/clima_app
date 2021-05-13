import 'package:clima_app/components/buttons/custom.dart';
import 'package:clima_app/services/network/weather.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final WeatherServices _weather = WeatherServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clima App"),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(72.0),
              child: CustomRoundButton(
                buttonTitle: "Get Weather",
                color: Theme.of(context).primaryColor,
                onPressed: () {

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
