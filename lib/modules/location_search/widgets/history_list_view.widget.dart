import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/models/history_entry.model.dart';
import 'package:weatherapp/modules/location_search/notifiers/search_history.notifier.dart';
import 'package:weatherapp/resources/icons.dart';

typedef OnSelectHisotryEntry = void Function(HistoryEntryModel entry);

class HistoryListView extends ConsumerWidget {
  const HistoryListView({
    super.key,
    required this.onSelect,
  });

  final OnSelectHisotryEntry onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(searchHistoryNotifierProvider);

    return ProviderValueBuilder<List<HistoryEntryModel>, AppException>(
      value: notifier.history,
      emptyDataBuilder: (context) => DefaultEmptyDataWidget(
        child: Text('No history'),
      ),
      loadingBuilder: (context) => ListTile(
        leading: OLoader(size: OLoaderSize.small),
        title: Text('Loading ...'),
      ),
      dataBuilder: (context, entries) => ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          for (final entry in entries)
            _HistoryEntryWidget(
              onTap: () => onSelect(entry),
              entry: entry,
            )
        ],
      ),
    );
  }
}

class _HistoryEntryWidget extends ConsumerWidget {
  const _HistoryEntryWidget({
    required this.onTap,
    required this.entry,
  });

  final VoidCallback onTap;
  final HistoryEntryModel entry;

  void deleteEntry(WidgetRef ref) {
    ref.read(searchHistoryNotifierProvider).delete(entry);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () => onTap(),
      leading: const Icon(AppIcons.history),
      trailing: IconButton(
        onPressed: () => deleteEntry(ref),
        icon: const Icon(AppIcons.delete),
      ),
      title: Text(
        entry.place.placemark,
        maxLines: 1,
        softWrap: false,
        overflow: TextOverflow.fade,
      ),
    );
  }
}
