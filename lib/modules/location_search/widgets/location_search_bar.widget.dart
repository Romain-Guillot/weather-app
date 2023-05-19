import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/models/geocoding_place.model.dart';
import 'package:weatherapp/extensions/context.extension.dart';
import 'package:weatherapp/models/history_entry.model.dart';
import 'package:weatherapp/modules/home/notifiers/location.weather.notifier.dart';
import 'package:weatherapp/modules/location_search/notifiers/search_history.notifier.dart';
import 'package:weatherapp/modules/location_search/notifiers/search_location.notifier.dart';
import 'package:weatherapp/modules/location_search/widgets/history_list_view.widget.dart';
import 'package:weatherapp/modules/settings/widgets/settings_icon_button.widget.dart';
import 'package:weatherapp/resources/icons.dart';

class LocationSearchBarWidget extends ConsumerStatefulWidget {
  const LocationSearchBarWidget({super.key});

  @override
  ConsumerState<LocationSearchBarWidget> createState() => _LocationSearchBarWidgetState();
}

class _LocationSearchBarWidgetState extends ConsumerState<LocationSearchBarWidget> {
  final SearchController controller = SearchController();

  @override
  void initState() {
    super.initState();
    reinitSearchController();
  }

  void reinitSearchController() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.text = ref.read(locationNotifierProvider).placemark;
    });
  }

  void onChangePlace(LocationNotifier notifier, GeocodingPlace place) {
    notifier.onChange(place);
    ref.read(searchHistoryNotifierProvider).edit(HistoryEntryModel(
          lastUsed: DateTime.now(),
          place: place,
        ));

    goBack(notifier);
  }

  void onSeelectHistoryEntry(LocationNotifier notifier, HistoryEntryModel entry) {
    notifier.onChange(entry.place);
    ref.read(searchHistoryNotifierProvider).edit(entry.copyWith(lastUsed: DateTime.now()));
    goBack(notifier);
  }

  void onCurrentLocation(LocationNotifier notifier) {
    notifier.onChangeToCurrentLocation();
    goBack(notifier);
  }

  void goBack(LocationNotifier notifier) {
    controller.text = notifier.placemark;
    controller.closeView(notifier.placemark);
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final notifier = ref.watch(locationNotifierProvider);

    ref.listen(locationNotifierProvider, (_, notifier) {
      reinitSearchController();
    });

    return SearchAnchor.bar(
      searchController: controller,
      viewHintText: context.strings.locationSearchHint,
      barTrailing: const [
        SettingsIconButtonWidget(),
      ],
      viewLeading: BackButton(
        onPressed: () => goBack(notifier),
      ),
      suggestionsBuilder: (context, controller) {
        // TODO(RGU) not async for now: https://github.com/flutter/flutter/pull/127019
        return [
          ListTile(
            onTap: () => onCurrentLocation(notifier),
            leading: const Icon(AppIcons.currentLocation),
            title: Text(context.strings.useCurrentPosition),
          ),
          _PlacesSuggestionBuilder(
            address: controller.text,
            onSelect: (place) => onChangePlace(notifier, place),
          ),
          const Divider(height: 0),
          Padding(
            padding: EdgeInsets.all(theme.paddings.medium),
            child: Text(
              context.strings.searchHistoryLabel,
              style: theme.textTheme.titleMedium,
            ),
          ),
          HistoryListView(
            onSelect: (entry) => onSeelectHistoryEntry(notifier, entry),
          ),
        ];
      },
    );
  }
}

typedef OnSelectPlace = void Function(GeocodingPlace place);

class _PlacesSuggestionBuilder extends ConsumerWidget {
  const _PlacesSuggestionBuilder({
    required this.address,
    required this.onSelect,
  });

  final String address;
  final OnSelectPlace onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(searchLocationNotifierProvider(address));

    return ProviderValueBuilder(
      value: notifier.places,
      emptyDataBuilder: (context) => ListTile(
        leading: const Icon(Icons.search_off_outlined),
        title: DefaultTextStyle.merge(
          style: const TextStyle(fontStyle: FontStyle.italic),
          child: Text(context.strings.noPlaceFound),
        ),
      ),
      loadingBuilder: (context) => ListTile(
        leading: const OLoader(size: OLoaderSize.small),
        title: Text(context.strings.loading),
      ),
      dataBuilder: (context, places) => ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          for (final place in places)
            ListTile(
              onTap: () => onSelect(place),
              leading: const Icon(AppIcons.location),
              title: Text(place.placemark),
            )
        ],
      ),
    );
  }
}
