import 'package:isar/isar.dart';

part 'search_history_entry.entity.g.dart';

@collection
class SearchHistoryEntryEntity {
  Id? id;

  double? lat;
  double? lon;

  @Index()
  String? placemark;

  DateTime? lastUsed;
}
