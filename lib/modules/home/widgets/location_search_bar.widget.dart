import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/modules/home/notifiers/location.weather.notifier.dart';
import 'package:weatherapp/resources/icons.dart';

class LocationSearchBarWidget extends ConsumerStatefulWidget {
  const LocationSearchBarWidget({super.key});

  @override
  ConsumerState<LocationSearchBarWidget> createState() => _LocationSearchBarWidgetState();
}

class _LocationSearchBarWidgetState extends ConsumerState<LocationSearchBarWidget> {
  final SearchController controller = SearchController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final notifier = ref.watch(locationNotifierProvider);
    controller.text = notifier.placemark;

    return SearchAnchor.bar(
      searchController: controller,
      viewHintText: 'Location',
      barTrailing: [
        IconButton(
          onPressed: () {},
          icon: Icon(AppIcons.setting),
        ),
      ],
      suggestionsBuilder: (context, controller) {
        return [
          ListTile(
            onTap: () {},
            leading: Icon(AppIcons.currentLocation),
            title: Text('Use current position'),
          ),
          const Divider(height: 0),
          Padding(
            padding: EdgeInsets.all(theme.paddings.medium),
            child: Text(
              'History',
              style: theme.textTheme.titleMedium,
            ),
          ),
        ];
      },
    );
  }
}
