import 'package:flutter/foundation.dart';

@immutable

/// class to hold firebase collection names
class FirebaseCollectionName {
  /// firebase collection name constructor
  const FirebaseCollectionName._();

  /// drivers collection name
  static const drivers = 'drivers';

  /// trips collection name
  static const trips = 'trips';

  /// buses collection name
  static const buses = 'buses';

  /// user collection name
  static const users = 'users';
}
