import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/errors/exceptions/invalid_history_entry.exception.dart';
import 'package:weatherapp/core/models/geo_location.model.dart';
import 'package:weatherapp/core/models/geocoding_place.model.dart';
import 'package:weatherapp/extensions/geo_location.extension.dart';
import 'package:weatherapp/models/history_entry.model.dart';
import 'package:weatherapp/repositories/history/entities/search_history_entry.entity.dart';

class SearchHistoryEntityToModelConverter extends ModelConverter<SearchHistoryEntryEntity, HistoryEntryModel> {
  SearchHistoryEntityToModelConverter(super.object);

  @override
  HistoryEntryModel convert() {
    final latitude = object.lat;
    final longitude = object.lon;

    if (latitude == null || longitude == null) {
      throw InvalidHistoryEntry();
    }

    final location = GeoLocation(latitude, longitude);

    return HistoryEntryModel(
      id: object.id,
      lastUsed: object.lastUsed ?? minDateTime,
      place: GeocodingPlace(
        location: location,
        placemark: object.placemark ?? location.format(),
      ),
    );
  }
}
