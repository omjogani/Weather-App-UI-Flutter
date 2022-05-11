import 'package:flutter/material.dart';

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
          left: 120.0,
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
        Positioned(
          left: 10.0,
          top: -150,
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
        Positioned(
          left: 70.0,
          top: -200,
          child: Container(
            height: 250.0,
            width: 250.0,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: <Color>[
                  Colors.white.withOpacity(0.7),
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.01),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 00.0,
          top: 80.0,
          child: Container(
            height: 250.0,
            width: 250.0,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: <Color>[
                  const Color.fromARGB(255, 28, 32, 66).withOpacity(0.7),
                  const Color.fromARGB(255, 28, 32, 66).withOpacity(0.5),
                  const Color.fromARGB(255, 28, 32, 66).withOpacity(0.2),
                  const Color.fromARGB(255, 28, 32, 66).withOpacity(0.1),
                  const Color.fromARGB(255, 28, 32, 66).withOpacity(0.01),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
