import 'package:isar/isar.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/repositories/history/entities/search_history_entry.entity.dart';

final isarDatabaseProvider = FutureProvider<Isar>((ref) async {
  var instance = Isar.getInstance();
  if (instance == null) {
    final dir = await getApplicationSupportDirectory();

    instance = await Isar.open(
      [SearchHistoryEntryEntitySchema],
      directory: dir.path,
    );
  }
  return instance;
});
