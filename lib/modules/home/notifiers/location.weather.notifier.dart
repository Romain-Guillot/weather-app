import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/models/geo_location.model.dart';
import 'package:weatherapp/extensions/geo_location.extension.dart';
import 'package:weatherapp/services/geocoding.service.dart';

final locationNotifierProvider = ChangeNotifierProvider.autoDispose((ref) {
  final notifier = LocationNotifier(
    logger: XLoggerImpl(context: LocationNotifier),
    geocodingService: ref.watch(geocodingServiceProvider),
  );
  notifier.init();

  return notifier;
});

const GeoLocation _kDefaultLocation = GeoLocation(45.77576274899703, 4.885990139695345);

class LocationNotifier extends ChangeNotifier {
  LocationNotifier({
    required this.logger,
    required this.geocodingService,
  });

  final XLogger logger;
  final GeocodingService geocodingService;

  String _placemark = _kDefaultLocation.format;
  String get placemark => _placemark;
  set placemark(String value) {
    _placemark = value;
    notifyListeners();
  }

  GeoLocation _location = _kDefaultLocation;
  GeoLocation get location => _location;
  set location(GeoLocation value) {
    _location = value;
    notifyListeners();
  }

  Future<void> init() async {
    logger.d("init");
    try {
      final currentLocation = await geocodingService.currentLocation();
      if (currentLocation != null) {
        final placemark = await geocodingService.placemark(
          currentLocation.lat,
          currentLocation.lon,
        );
        this.placemark = placemark ?? currentLocation.format;
        location = currentLocation;
      }
    } on AppException catch (e) {
      logger.exception('Unable to load weather', e);
    }
  }
}
