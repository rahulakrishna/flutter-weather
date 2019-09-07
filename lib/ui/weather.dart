import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/weather.model.dart';
import '../models/unsplash.model.dart';

class Weather extends StatelessWidget {
  Future<WeatherResponse> getWeather() async {
    final String url =
        'https://api.openweathermap.org/data/2.5/weather?q=Kozhikode,in&appid=${DotEnv().env['OPEN_WEATHER_APP_ID']}';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return WeatherResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }

  Future<UnsplashResponse> getImage(String query) async {
    final String url =
        'https://api.unsplash.com/search/photos?client_id=${DotEnv().env['UNSPLASH_CLIENT_ID']}&query=$query+weather';
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
        body: FutureBuilder<WeatherResponse>(
            future: getWeather(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print(snapshot);
                return Container(
                    margin: EdgeInsets.all(0),
                    child: Stack(children: <Widget>[
                      FutureBuilder(
                          future: getImage(snapshot.data.weather[0].main),
                          builder: (imageContext, imageSnapshot) {
                            if (imageSnapshot.hasData) {
                              final String imageUrl =
                                  '${imageSnapshot.data.results[0].urls.full}&w=900&h=1080&fit=crop';
                              print(imageUrl);
                              return Container(
                                width: 800,
                                height: 2000,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(imageUrl))),
                              );
                            } else if (imageSnapshot.hasError) {
                              throw Exception('Something broke');
                            }
                            return LinearProgressIndicator();
                          }),
                      Container(
                        width: 800,
                        height: 1080,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                        ),
                        child: Text('')
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                          Center(
                              child: Text(
                                  '${snapshot.data.name}, ${snapshot.data.sys.country}',
                                style: TextStyle(color: Colors.white),)
                                ),
                          Center(
                            child: Text(
                              '${getCelsiusFromKelvin(snapshot.data.main.temp).toStringAsFixed(1)} °C',
                              style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.w900)
                            ),
                          ),
                          Center(
                              child: Text(
                                  '${snapshot.data.weather[0].description}',
                                  style: TextStyle(color: Colors.white)
                                )),
                        ]),
                      ]
                      )
                    ]));
              } else if (snapshot.hasError) {
                return Text('Some Error Occured');
              }
              return Center(child: CircularProgressIndicator());
            })));
  }
}
