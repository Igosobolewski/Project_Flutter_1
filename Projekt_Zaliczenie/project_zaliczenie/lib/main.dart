import 'package:flutter/material.dart';
import 'package:project_zaliczenie/models/weather_model.dart';
import 'package:project_zaliczenie/services/weather_api_client.dart';
import 'package:project_zaliczenie/views/additional_information.dart';
import 'package:project_zaliczenie/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

WeatherApiClient client = WeatherApiClient();
@override
void initState() {
  super.initState();
  client.getCurrentWeather("Georgia");
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9f9f9),
      appBar: AppBar(
        backgroundColor: Color(0xFFf9f9f9),
        elevation: 0.0,
        title: const Text("Weather Forecast", style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentWeather(Icons.wb_sunny_rounded, "26.3 C", "Warsaw"),
          SizedBox(height: 60.0,
          ),
          Text(
            "Additional Information", 
          style: TextStyle(
            fontSize: 24.0,
            color: Color(0xdd212121),
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(),
        SizedBox(
          height: 20.0,
        ),
        additionalInformatio("24", "2", "1013", "25"),
      ]),
    );
  }
}