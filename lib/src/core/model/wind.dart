/// Wind entity
class Wind {
  /// Wind constructor
  Wind({required this.speed, required this.direction, required this.gust});

  /// factory constructor to get wind from Json
  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json["speed"] as double,
        direction: json["deg"] as double,
        gust: json["gust"] as double,
      );

  /// wind speed
  final double speed;

  /// wind direction in degrees
  final double direction;

  /// wind gust default/metric in m/s imperial in mph
  final double gust;

  /// copies current instance with new value
  Wind copyWith({double? speed, double? deg, double? gust}) => Wind(
        speed: speed ?? this.speed,
        direction: deg ?? direction,
        gust: gust ?? this.gust,
      );

  /// method to convert to Json
  Map<String, dynamic> toJson() => {"speed": speed, "deg": direction, "gust": gust};
}
