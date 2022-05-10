import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

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

      // boxShadow: <>[],
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
                  // border: Border(
                  //   top: BorderSide(color: Colors.white, width: 2.0),
                  // ),
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
          SlidingPanelBackground(),
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
                      color: Colors.white54,
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
                      WeatherDetailCard(),
                      WeatherDetailCard(),
                      WeatherDetailCard(),
                      WeatherDetailCard(),
                      WeatherDetailCard(),
                      WeatherDetailCard(),
                      WeatherDetailCard(),
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

class WeatherDetailCard extends StatelessWidget {
  const WeatherDetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 60.0,
        height: 160.0,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              "12 AM",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Image.asset(
                "assets/images/weather/moon/1.png",
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              "19°",
              style: TextStyle(
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

class SlidingPanelBackground extends StatelessWidget {
  const SlidingPanelBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 50.0,
          child: Container(
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: <Color>[
                  Colors.yellow.withOpacity(0.3),
                  Colors.yellow.withOpacity(0.2),
                  Colors.yellow.withOpacity(0.1),
                  Colors.yellow.withOpacity(0.01),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 100.0,
          top: -100,
          child: Container(
            height: 250.0,
            width: 250.0,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: <Color>[
                  Colors.pink.withOpacity(0.3),
                  Colors.pink.withOpacity(0.2),
                  Colors.pink.withOpacity(0.1),
                  Colors.pink.withOpacity(0.01),
                ],
              ),
            ),
          ),
        ),
        // Positioned(
        //   top: 0.0,
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(40.0),
        //     child: Container(
        //       height: 2.0,
        //       width: MediaQuery.of(context).size.width,
        //       decoration: BoxDecoration(
        //         boxShadow: <BoxShadow>[
        //           BoxShadow(
        //             offset: Offset(0, 1),
        //             color: Colors.white,
        //             spreadRadius: 0.0,
        //             blurRadius: 0.0,
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
