// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return WeatherResponse(
      coord: json['coord'] == null
          ? null
          : Coord.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List)
          ?.map((e) => e == null
              ? null
              : WeatherElement.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      base: json['base'] as String,
      main: json['main'] == null
          ? null
          : Main.fromJson(json['main'] as Map<String, dynamic>),
      visibility: json['visibility'] as int,
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: json['clouds'] == null
          ? null
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: json['dt'] as int,
      sys: json['sys'] == null
          ? null
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      id: json['id'] as int,
      name: json['name'] as String,
      cod: json['cod'] as int);
}

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'coord': instance.coord?.toJson(),
      'weather': instance.weather?.map((e) => e?.toJson())?.toList(),
      'base': instance.base,
      'main': instance.main?.toJson(),
      'visibility': instance.visibility,
      'wind': instance.wind?.toJson(),
      'clouds': instance.clouds?.toJson(),
      'dt': instance.dt,
      'sys': instance.sys?.toJson(),
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod
    };

Clouds _$CloudsFromJson(Map<String, dynamic> json) {
  return Clouds(all: json['all'] as int);
}

Map<String, dynamic> _$CloudsToJson(Clouds instance) =>
    <String, dynamic>{'all': instance.all};

Coord _$CoordFromJson(Map<String, dynamic> json) {
  return Coord(
      lon: (json['lon'] as num)?.toDouble(),
      lat: (json['lat'] as num)?.toDouble());
}

Map<String, dynamic> _$CoordToJson(Coord instance) =>
    <String, dynamic>{'lon': instance.lon, 'lat': instance.lat};

Main _$MainFromJson(Map<String, dynamic> json) {
  return Main(
      temp: (json['temp'] as num)?.toDouble(),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
      tempMin: (json['tempMin'] as num)?.toDouble(),
      tempMax: (json['tempMax'] as num)?.toDouble());
}

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax
    };

Sys _$SysFromJson(Map<String, dynamic> json) {
  return Sys(
      type: json['type'] as int,
      id: json['id'] as int,
      message: (json['message'] as num)?.toDouble(),
      country: json['country'] as String,
      sunrise: json['sunrise'] as int,
      sunset: json['sunset'] as int);
}

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'message': instance.message,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset
    };

WeatherElement _$WeatherElementFromJson(Map<String, dynamic> json) {
  return WeatherElement(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String);
}

Map<String, dynamic> _$WeatherElementToJson(WeatherElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon
    };

Wind _$WindFromJson(Map<String, dynamic> json) {
  return Wind(
      speed: (json['speed'] as num)?.toDouble(), deg: json['deg'] as int);
}

Map<String, dynamic> _$WindToJson(Wind instance) =>
    <String, dynamic>{'speed': instance.speed, 'deg': instance.deg};
