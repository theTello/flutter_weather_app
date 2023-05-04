/// Humidity or Rain entity
class Rain {
  /// Rain constructor
  Rain({
    required this.pastHour,
  });

  /// factory constructor to get rain from Json
  factory Rain.fromJson(Map<String, dynamic> json) => Rain(
        pastHour: json["1h"] as double,
      );

  ///Rain volume in the last hour in mm
  final double pastHour;

  /// copies current instance with new value
  Rain copyWith({double? the1H}) => Rain(
        pastHour: the1H ?? pastHour,
      );

  /// method to convert to Json
  Map<String, dynamic> toJson() => {"1h": pastHour};
}
