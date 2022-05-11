import 'package:flutter/material.dart';
import 'package:weather_app_ui/screen/home_screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather UI',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: "SF Pro Text",
      ),
      home: const HomePage(),
    );
  }
}
