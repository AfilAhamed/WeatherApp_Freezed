import 'package:dio/dio.dart';
import '../model/weather_model.dart';

class WeatherApi {
  final Dio _dio = Dio();

  Future<Weather> getCurrentWeather(String location) async {
    var endpoint =
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=3837f082b65893f0fc5883912ebd9ac8&units=metric";

    var response = await _dio.get(endpoint);

    try {
      if (response.statusCode == 200) {
        var body = response.data;
        return Weather.fromJson(body);
      } else {
        throw Exception("Request failed with status: ${response.statusCode}");
      }
    } catch (e) {
      print(e);
      throw e.toString();
    }
  }
}
