import 'package:flutter_projet/data/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class HttpHelper{
  //https://api.openweathermap.org/data/2.5/weather?q=Tunisia&appid=aed7f74a0d4176a579098ace459bf5f2
  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = 'aed7f74a0d4176a579098ace459bf5f2';

  Future<Weather> getWeather(String location) async {
    Map<String,dynamic> paramaters = {'q':location , 'appId':apiKey};
    Uri uri= Uri.https(authority,path,paramaters);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    Weather weather = Weather.fromJson(data);

    return weather;

  }

}