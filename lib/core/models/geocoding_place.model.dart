import 'package:weatherapp/core/models/geo_location.model.dart';

class GeocodingPlace {
  GeocodingPlace({
    required this.location,
    required this.placemark,
  });

  final GeoLocation location;
  final String placemark;
}
