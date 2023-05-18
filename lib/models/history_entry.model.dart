import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/models/geocoding_place.model.dart';

part 'history_entry.model.freezed.dart';

@freezed
class HistoryEntryModel with _$HistoryEntryModel {
  factory HistoryEntryModel({
    int? id,
    required GeocodingPlace place,
    required DateTime lastUsed,
  }) = _HistoryEntryModel;
}
