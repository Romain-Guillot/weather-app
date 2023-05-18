import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/models/history_entry.model.dart';
import 'package:weatherapp/repositories/history/entities/search_history_entry.entity.dart';

class SearchHistoryModelToEntityConverter extends ModelConverter<HistoryEntryModel, SearchHistoryEntryEntity> {
  SearchHistoryModelToEntityConverter(super.object);

  int? id;

  SearchHistoryModelToEntityConverter withId(int? id) {
    this.id = id;
    return this;
  }

  @override
  SearchHistoryEntryEntity convert() {
    return SearchHistoryEntryEntity()
      ..id = id ?? object.id
      ..lastUsed = object.lastUsed
      ..lat = object.place.location.lat
      ..lon = object.place.location.lon
      ..placemark = object.place.placemark;
  }
}
