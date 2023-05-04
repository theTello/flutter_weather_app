/// weather entity
class Weather {
  /// Weather constructor
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.groundLevel,
  });

  /// factory constructor to get weather from Json
  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json["id"] as int?,
        main: json["main"] as String?,
        description: json["description"] as String?,
        icon: json["icon"] as String?,
        temp: json["temp"] as double?,
        feelsLike: json["feels_like"] as double?,
        tempMin: json["temp_min"] as double?,
        tempMax: json["temp_max"] as double?,
        pressure: json["pressure"] as double?,
        humidity: json["humidity"] as double?,
        seaLevel: json["sea_level"] as double?,
        groundLevel: json["grnd_level"] as double?,
      );

  ///
  final int? id;

  ///
  final String? main;

  ///
  final String? description;

  ///
  final String? icon;

  ///
  final double? temp;

  ///
  final double? feelsLike;

  ///
  final double? tempMin;

  ///
  final double? tempMax;

  ///
  final double? pressure;

  ///
  final double? humidity;

  ///
  final double? seaLevel;

  ///
  final double? groundLevel;

  /// copies current instance with new value

  Weather copyWith({
    int? id,
    String? main,
    String? description,
    String? icon,
    double? temp,
    double? feelsLike,
    double? tempMin,
    double? tempMax,
    double? pressure,
    double? humidity,
    double? seaLevel,
    double? groundLevel,
  }) {
    return Weather(
      id: id ?? this.id,
      main: main ?? this.main,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      temp: temp ?? this.temp,
      feelsLike: feelsLike ?? this.feelsLike,
      tempMin: tempMin ?? this.tempMin,
      tempMax: tempMax ?? this.tempMax,
      pressure: pressure ?? this.pressure,
      humidity: humidity ?? this.humidity,
      seaLevel: seaLevel ?? this.seaLevel,
      groundLevel: groundLevel ?? this.groundLevel,
    );
  }

  /// method to convert to Json
  Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
        "sea_level": seaLevel,
        "grnd_level": groundLevel,
      };
}
