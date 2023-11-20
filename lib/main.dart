import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp_freezed/view/home_screen.dart';

import 'controller/weather_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WeatherController()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WeatherApi',
        home: HomeScreen(),
      ),
    );
  }
}
