import 'package:flutter/foundation.dart' show immutable;

@immutable

/// class to hold firebase field names
class FirebaseFieldName {
  /// firebase field name constructor
  const FirebaseFieldName._();

  /// user id field name
  static const String userId = 'user_id';

  /// trip id field name
  static const String tripId = 'trip_id';

  /// bus  field name
  static const String bus = 'bus';

  /// created at or time of booking field name
  static const String createdAt = 'created_at';

  /// departure time field name
  static const String departureTime = 'departure_time';

  /// departure date  field name
  static const String date = 'date';

  /// display name field name
  static const String displayName = 'display_name';

  /// email field name
  static const String email = 'email';

  /// phone number field name
  static const String phoneNumber = 'phone_number';

  /// id card images field name
  static const String idCardImages = 'id_card_image';

  /// profile picture field name
  static const String profilePicture = 'profile_picture';

  /// completed verification field name
  static const String completedVerification = 'completed_verification';

  /// user role field name
  static const String role = 'role';
}
