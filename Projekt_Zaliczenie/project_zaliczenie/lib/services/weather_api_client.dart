import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_zaliczenie/models/weather_model.dart';

class WeatherApiClient{
Future<Weather>? getCurrentWeather(String? location) async{
  var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=location&appid=661f4e690883c1600828881c0874a0ec");
  
  var response = await http.get(endpoint);
  var body = jsonDecode(response.body);
  print(Weather.fromJson(body));
  return Weather.fromJson(body);
  }
}