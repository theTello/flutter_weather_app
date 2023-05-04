/// System entity, contains data such as sunrise time and sunset time
class System {
  /// System constructor
  System({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  ///factory constructor to get system from Json
  factory System.fromJson(Map<String, dynamic> json) => System(
        type: json["type"] as int,
        id: json["id"] as int,
        country: json["country"] as String,
        sunrise: json["sunrise"] as int,
        sunset: json["sunset"] as int,
      );

  ///
  final int type;

  ///
  final int id;

  ///Country code eg (GH, GB, JP)
  final String country;

  /// sunrise time
  final int sunrise;

  /// sunset time
  final int sunset;

  /// copies current instance with new value
  System copyWith({int? type, int? id, String? country, int? sunrise, int? sunset}) => System(
        type: type ?? this.type,
        id: id ?? this.id,
        country: country ?? this.country,
        sunrise: sunrise ?? this.sunrise,
        sunset: sunset ?? this.sunset,
      );

  /// method to convert to Json
  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
      };
}
