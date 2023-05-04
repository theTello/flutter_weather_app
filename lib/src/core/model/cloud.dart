/// Cloud entity
class Clouds {
  /// Clouds constructor
  Clouds({
    required this.cloudiness,
  });

  /// factory constructor to get cloudiness from Json
  factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
        cloudiness: json["all"] as double,
      );

  /// percentage cloudiness
  final double cloudiness;

  /// copies current instance with new value
  Clouds copyWith({double? all}) => Clouds(
        cloudiness: all ?? cloudiness,
      );

  /// method to convert to Json
  Map<String, dynamic> toJson() => {"all": cloudiness};
}
