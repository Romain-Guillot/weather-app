import 'package:isar/isar.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/models/history_entry.model.dart';
import 'package:weatherapp/repositories/history/converters/search_history_entity_to_model.converter.dart';
import 'package:weatherapp/repositories/history/converters/search_history_model_to_entity.converter.dart';
import 'package:weatherapp/repositories/history/entities/search_history_entry.entity.dart';
import 'package:weatherapp/repositories/history/search_history.repository.dart';

class LocalSearchHistoryRepository implements SearchHistoryRepository {
  LocalSearchHistoryRepository({
    required this.logger,
    required this.isar,
  });

  final XLogger logger;
  final Future<Isar> isar;

  @override
  Future<List<HistoryEntryModel>> retrieveHistory() async {
    final isar = await this.isar;
    final collection = isar.collection<SearchHistoryEntryEntity>();

    final entities = await collection.where().sortByLastUsedDesc().limit(15).findAll();

    List<HistoryEntryModel> models = [];
    for (final entity in entities) {
      try {
        models.add(SearchHistoryEntityToModelConverter(entity).convert());
      } catch (e) {
        logger.e('Unable to convert en entity', e);
      }
    }
    logger.d('${models.length} entities successfully parsed');

    return models;
  }

  @override
  Future<HistoryEntryModel> editEntry({required HistoryEntryModel entry}) async {
    final isar = await this.isar;
    final collection = isar.collection<SearchHistoryEntryEntity>();

    var entity = SearchHistoryModelToEntityConverter(entry).convert();

    SearchHistoryEntryEntity? existingEntity;

    final entryId = entry.id;
    if (entryId != null) {
      existingEntity = await collection.get(entryId);
    }
    existingEntity ??= await collection.where().placemarkEqualTo(entry.place.placemark).findFirst();

    if (existingEntity != null) {
      entity.id = existingEntity.id;
    }

    await isar.writeTxn(
      () => collection.put(entity),
    );

    return entry;
  }

  @override
  Future<void> delete({required int id}) async {
    logger.d('delete($id})');

    final isar = await this.isar;
    final collection = isar.collection<SearchHistoryEntryEntity>();

    await isar.writeTxn(
      () => collection.delete(id),
    );
  }
}
