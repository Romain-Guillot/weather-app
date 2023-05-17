import 'package:weatherapp/core/models/geo_location.model.dart';

extension GeoLocationExtension on GeoLocation {
  String get format => '$lat, $lon';
}
