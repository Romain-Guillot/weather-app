import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/data/open_meteo/isar/isar.database.dart';
import 'package:weatherapp/models/history_entry.model.dart';
import 'package:weatherapp/repositories/history/isar_search_history.repository.dart';

final searchHistoryRepositoryProvider = Provider<SearchHistoryRepository>((ref) {
  return LocalSearchHistoryRepository(
    logger: XLoggerImpl(context: LocalSearchHistoryRepository),
    isar: ref.watch(isarDatabaseProvider.future),
  );
});

abstract interface class SearchHistoryRepository {
  Future<List<HistoryEntryModel>> retrieveHistory();

  Future<HistoryEntryModel> editEntry({required HistoryEntryModel entry});

  Future<void> delete({required int id});
}
