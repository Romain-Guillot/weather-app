import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/models/geo_location.model.dart';

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

  Future<GeoLocation?> decode(String address) async {
    final location = await locationFromAddress(address);
    final effectiveLocation = location.firstOrNull;
    if (effectiveLocation != null) {
      return GeoLocation(effectiveLocation.latitude, effectiveLocation.longitude);
    }

    return null;
  }

  Future<String?> placemark(double lat, double lon) async {
    final location = await placemarkFromCoordinates(lat, lon);
    final effectiveLocation = location.firstOrNull;
    if (effectiveLocation != null) {
      return effectiveLocation.locality;
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
