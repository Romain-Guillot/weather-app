import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/models/geo_location.model.dart';
import 'package:weatherapp/core/models/geocoding_place.model.dart';
import 'package:weatherapp/extensions/geo_location.extension.dart';
import 'package:weatherapp/extensions/placemark.extension.dart';

final geocodingServiceProvider = Provider<GeocodingService>((ref) {
  return GeocodingService(
    logger: XLoggerImpl(context: GeocodingService),
  );
});

class GeocodingService {
  GeocodingService({
    required this.logger,
  });

  final XLogger logger;

  Future<List<GeocodingPlace>?> decode(String address) async {
    final locations = await locationFromAddress(address);

    final result = <GeocodingPlace>[];
    for (final location in locations) {
      final placemark = await placemarkFromCoordinates(location.latitude, location.longitude);
      final position = GeoLocation(location.latitude, location.longitude);
      result.add(GeocodingPlace(
        location: position,
        placemark: placemark.firstOrNull?.format() ?? position.format(),
      ));
    }

    return result;
  }

  Future<String?> retrievePlacemark(double lat, double lon) async {
    final location = await placemarkFromCoordinates(lat, lon);
    final effectiveLocation = location.firstOrNull;
    if (effectiveLocation != null) {
      return effectiveLocation.format();
    }

    return null;
  }

  Future<GeoLocation?> currentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    final location = await Geolocator.getCurrentPosition();

    return GeoLocation(location.latitude, location.longitude);
  }
}
