import 'package:cloud_firestore/cloud_firestore.dart';

/// Handy json converter for external apis
class JsonConverterWrapper {
  /// Get date
  static DateTime date(Map<dynamic, dynamic> json, Object value) {
    if (json[value] == null) {
      return DateTime.parse('2022-02-04T19:51:39.671806Z');
    }
    return (json[value] as Timestamp).toDate();
  }

  /// Get TimeStamp
  static Timestamp timestampToJson(DateTime? date) => Timestamp.fromDate(
        date ?? DateTime.now(),
      );
}
