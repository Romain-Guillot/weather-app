import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/errors/call_api_or_throw.dart';
import 'package:weatherapp/core/models/geocoding_place.model.dart';
import 'package:weatherapp/services/geocoding.service.dart';

final searchLocationNotifierProvider = ChangeNotifierProvider.autoDispose.family<SearchLocationNotifier, String>((ref, address) {
  final notifier = SearchLocationNotifier(
    logger: XLoggerImpl(context: SearchLocationNotifier),
    geocodingService: ref.watch(geocodingServiceProvider),
    address: address,
  );
  notifier.search();

  return notifier;
});

class SearchLocationNotifier extends ChangeNotifier {
  SearchLocationNotifier({
    required this.logger,
    required this.geocodingService,
    required this.address,
  });

  final XLogger logger;
  final GeocodingService geocodingService;
  final String address;

  late final places = ProviderValue<List<GeocodingPlace>, AppException>(notify: notifyListeners);

  Future<void> search() async {
    logger.d("search (address=$address)");

    try {
      places.value = await callOrThrow(
        () => geocodingService.decode(address),
      );
    } on AppException catch (e) {
      logger.d('Unable to decode the address', e);
      places.value = [];
    } on Exception catch (e) {
      logger.e('Unexpected exception', e);
      places.value = [];
    }
  }
}
