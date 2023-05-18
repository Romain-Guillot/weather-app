import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/errors/call_api_or_throw.dart';
import 'package:weatherapp/models/history_entry.model.dart';
import 'package:weatherapp/repositories/history/search_history.repository.dart';

final searchHistoryNotifierProvider = ChangeNotifierProvider.autoDispose((ref) {
  final notifier = SearchHistoryNotifier(
    logger: XLoggerImpl(context: SearchHistoryNotifier),
    searchHistoryRepository: ref.watch(searchHistoryRepositoryProvider),
  );
  notifier.load();

  return notifier;
});

class SearchHistoryNotifier extends ChangeNotifier {
  SearchHistoryNotifier({
    required this.logger,
    required this.searchHistoryRepository,
  });

  final XLogger logger;
  final SearchHistoryRepository searchHistoryRepository;

  late final history = ProviderValue<List<HistoryEntryModel>, AppException>(notify: notifyListeners);

  Future<void> load() async {
    logger.d("load()");

    try {
      history.value = await callOrThrow(
        () => searchHistoryRepository.retrieveHistory(),
      );
    } on AppException catch (e) {
      logger.d('Unable to retrieve history', e);
      history.error = e;
    }
  }

  Future<void> edit(HistoryEntryModel entry) async {
    logger.d("add($entry)");

    try {
      await callOrThrow(
        () => searchHistoryRepository.editEntry(entry: entry),
      );
      load();
    } on AppException catch (e) {
      logger.d('Unable to decode the address', e);
      history.error = e;
    }
  }

  Future<void> delete(HistoryEntryModel entry) async {
    logger.d("delete($entry)");

    try {
      final entryId = entry.id;
      if (entryId != null) {
        await callOrThrow(
          () => searchHistoryRepository.delete(id: entryId),
        );
        load();
      }
    } on AppException catch (e) {
      logger.d('Unable to decode the address', e);
      history.error = e;
    }
  }
}
