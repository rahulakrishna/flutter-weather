import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/weather.model.dart';
import '../models/unsplash.model.dart';

class Weather extends StatelessWidget {
  Future<WeatherResponse> getWeather() async {
    final String url =
        'https://api.openweathermap.org/data/2.5/weather?q=Bangalore,in&appid=${DotEnv().env['OPEN_WEATHER_APP_ID']}';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return WeatherResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }

  Future<UnsplashResponse> getRandomImage() async {
    final String url =
        'https://api.unsplash.com/photos/random?client_id=${DotEnv().env['UNSPLASH_CLIENT_ID']}';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return UnsplashResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }

  double getCelsiusFromKelvin(double kelvin) {
    return kelvin - 273.15;
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(title: Text('Weather'), centerTitle: true),
        body: FutureBuilder<WeatherResponse>(
            future: getWeather(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print(snapshot);
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Column(children: <Widget>[
                    Center(
                        child: Text(
                            '${snapshot.data.name}, ${snapshot.data.sys.country}')),
                    Center(
                      child: Text(
                        '${getCelsiusFromKelvin(snapshot.data.main.temp).toStringAsFixed(1)} °C',
                        style: TextStyle(fontSize: 48),
                      ),
                    ),
                    Center(
                        child: Text('${snapshot.data.weather[0].description}')),
                    Center(
                        child: Text(
                            'The idea is to pass \'${snapshot.data.weather[0].main}\' to Unsplash and update the background image'))
                  ]),
                );
              } else if (snapshot.hasError) {
                return Text('Some Error Occured');
              }
              return Center(child: CircularProgressIndicator());
            })));
  }
}
