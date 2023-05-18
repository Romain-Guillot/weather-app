import 'package:geocoding/geocoding.dart';

extension PlacemarkExtension on Placemark {
  String? format() {
    var result = locality ?? subAdministrativeArea;
    if (result == null) {
      result = country;
    } else {
      result = '$result, $country';
    }
    return result;
  }
}
