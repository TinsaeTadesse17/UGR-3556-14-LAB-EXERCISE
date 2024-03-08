import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  static const String apiKey = 'YOUR_API_KEY';
  static const String apiUrl = 'https://api.example.com/weather';

  static Future<Map<String, dynamic>> fetchWeatherData() async {
    try {
      String url = '$apiUrl?apiKey=$apiKey';
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to fetch weather data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to fetch weather data: $error');
    }
  }
}

void main() async {
  print('Fetching weather data...');

  try {
    var data = await WeatherApiClient.fetchWeatherData();
    double temperature = data['main']['temp'];
    String conditions = data['weather'][0]['description'];

    print('Temperature: $temperature');
    print('Conditions: $conditions');
  } catch (error) {
    print('Error: $error');
  }

  print('Program execution continues...');
}
