import 'package:flutter/material.dart';

class WeatherDetailCard extends StatelessWidget {
  const WeatherDetailCard({
    Key? key,
    required this.textTime,
    required this.currentCelsius,
    required this.imagePath,
  }) : super(key: key);
  final String textTime;
  final String currentCelsius;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 60.0,
        height: 160.0,
        decoration: BoxDecoration(
          // TODO: Change Color of the Tiles Here...
          color: Colors.black45,
          borderRadius: BorderRadius.circular(30.0),
          //TODO: Add Shadow Here...
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              textTime,
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "$currentCelsius°",
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
