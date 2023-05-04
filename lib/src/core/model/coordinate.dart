/// Coordinates entity
class Coordinates {
  ///
  Coordinates({
    required this.longitude,
    required this.latitude,
  });

  /// factory constructor to get coordinates from Json
  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        longitude: json["lon"] as double,
        latitude: json["lat"] as double,
      );

  /// longitude
  final double longitude;

  /// latitude
  final double latitude;

  /// copy with new value
  Coordinates copyWith({double? lon, double? lat}) => Coordinates(
        longitude: lon ?? longitude,
        latitude: lat ?? latitude,
      );

  /// convert to Json Object
  Map<String, dynamic> toJson() => {"lon": longitude, "lat": latitude};
}
