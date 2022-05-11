import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:weather_app_ui/screen/home_screen/components/sliding_up_panel_background.dart';
import 'package:weather_app_ui/screen/home_screen/components/weather_detail_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            width: size.width,
            height: size.height,
            child: Image.asset(
              "assets/images/Image.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Montreal",
                        style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "19°",
                        style: TextStyle(
                          fontSize: 80.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Mostly Clear",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "H:24° L:18°",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height / 2,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: <Color>[
                            Color(0xFF3A3F54),
                            Color(0x003A3F54),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/svgviewer-output.png",
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SlidingScreen(),
        ],
      ),
    );
  }
}

class SlidingScreen extends StatelessWidget {
  const SlidingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      backdropColor: Colors.black45,
      backdropOpacity: 0.5,

      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
      ),
      color: Colors.transparent,

      boxShadow: <BoxShadow>[
        BoxShadow(
          color: const Color(0xFF3A3F54).withOpacity(0.5),
          blurRadius: 32.0,
          offset: const Offset(0,-20),
        ),
        const BoxShadow(
          color: Color(0x8CE0D9FF),
          blurRadius: 0.0,
          offset: Offset(0,-2),
          spreadRadius: -1.0,
        ),
      ],
      minHeight: 285.0,
      maxHeight: MediaQuery.of(context).size.height * 0.75,
      panel: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 6.0,
                sigmaY: 6.0,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: const BoxDecoration(
                  boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.white,
                    spreadRadius: 1.0,
                    blurRadius: 0.0,
                  ),
                ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color(0xFF2E335A),
                      Color(0xFF1C1B33),
                    ],
                  ),
                ),
                // color: Colors.black45,
              ),
            ),
          ),
          const SlidingPanelBackground(),
          Column(
            children: <Widget>[
              const SizedBox(height: 20.0),
              //indicator
              Container(
                width: 60.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Text(
                    "Hourly Forecast",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Weekly Forecast",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 160.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      WeatherDetailCard(textTime: "12 AM",currentCelsius: "19", imagePath: "assets/images/weather/moon/1.png"),
                      WeatherDetailCard(textTime: "Now",currentCelsius: "19", imagePath: "assets/images/weather/moon/3.png"),
                      WeatherDetailCard(textTime: "2 AM",currentCelsius: "18", imagePath: "assets/images/weather/moon/2.png"),
                      WeatherDetailCard(textTime: "3 AM",currentCelsius: "18", imagePath: "assets/images/weather/moon/3.png"),
                      WeatherDetailCard(textTime: "4 AM",currentCelsius: "17", imagePath: "assets/images/weather/moon/4.png"),
                      WeatherDetailCard(textTime: "5 AM",currentCelsius: "16", imagePath: "assets/images/weather/moon/1.png"),
                      WeatherDetailCard(textTime: "6 AM",currentCelsius: "17", imagePath: "assets/images/weather/moon/2.png"),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              // WeatherDetailCard(),
            ],
          ),
        ],
      ),
    );
  }
}


