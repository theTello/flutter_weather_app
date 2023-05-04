import 'cloud.dart';
import 'coordinate.dart';
import 'rain.dart';
import 'system.dart';
import 'weather.dart';
import 'wind.dart';

/// current weather entity
class CurrentWeather {
  /// current weather constructor
  CurrentWeather({
    required this.coordinates,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.rain,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  /// factory constructor to get coordinates from Json
  factory CurrentWeather.fromJson(Map<String, dynamic> json) => CurrentWeather(
        coordinates: Coordinates.fromJson(json["coord"] as Map<String, dynamic>),
        weather: List<Weather>.from(
          (json["weather"] as List<Map<String, dynamic>>).map(
            Weather.fromJson,
          ),
        ),
        base: json["base"] as String,
        main: Weather.fromJson(json["main"] as Map<String, dynamic>),
        visibility: json["visibility"] as int,
        wind: Wind.fromJson(json["wind"] as Map<String, dynamic>),
        rain: Rain.fromJson(json["rain"] as Map<String, dynamic>),
        clouds: Clouds.fromJson(json["clouds"] as Map<String, dynamic>),
        dt: json["dt"] as int,
        sys: System.fromJson(json["sys"] as Map<String, dynamic>),
        timezone: json["timezone"] as int,
        id: json["id"] as int,
        name: json["name"] as String,
        cod: json["cod"] as int,
      );

  ///
  final Coordinates coordinates;

  ///
  final List<Weather> weather;

  ///
  final String base;

  ///
  final Weather? main;

  ///
  final int visibility;

  ///
  final Wind wind;

  ///
  final Rain rain;

  ///
  final Clouds clouds;

  ///
  final int dt;

  ///
  final System? sys;

  ///
  final int timezone;

  ///
  final int id;

  ///
  final String name;

  ///
  final int cod;

  /// copy with new value
  CurrentWeather copyWith({
    Coordinates? coord,
    List<Weather>? weather,
    String? base,
    Weather? main,
    int? visibility,
    Wind? wind,
    Rain? rain,
    Clouds? clouds,
    int? dt,
    System? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) {
    return CurrentWeather(
      coordinates: coord ?? coordinates,
      weather: weather ?? this.weather,
      base: base ?? this.base,
      main: main ?? this.main,
      visibility: visibility ?? this.visibility,
      wind: wind ?? this.wind,
      rain: rain ?? this.rain,
      clouds: clouds ?? this.clouds,
      dt: dt ?? this.dt,
      sys: sys ?? this.sys,
      timezone: timezone ?? this.timezone,
      id: id ?? this.id,
      name: name ?? this.name,
      cod: cod ?? this.cod,
    );
  }

  /// convert to Json Object
  Map<String, dynamic> toJson() => {
        "coord": coordinates.toJson(),
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "base": base,
        "main": main?.toJson(),
        "visibility": visibility,
        "wind": wind.toJson(),
        "rain": rain.toJson(),
        "clouds": clouds.toJson(),
        "dt": dt,
        "sys": sys?.toJson(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
      };
}
