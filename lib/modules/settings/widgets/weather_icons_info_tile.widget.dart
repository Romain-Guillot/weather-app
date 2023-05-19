import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/extensions/context.extension.dart';
import 'package:weatherapp/router.dart';

class WeatherIconsInfoTileWidget extends StatelessWidget {
  const WeatherIconsInfoTileWidget({super.key});

  void onOpen(BuildContext context) {
    context.push(Routes.icons());
  }

  @override
  Widget build(BuildContext context) {
    return OCard(
      onTap: () => onOpen(context),
      function: OCardFunction.surface,
      hasContentPadding: true,
      title: OTitle(
        icon: const Icon(Icons.sunny_snowing),
        label: Text(context.strings.iconSettingsDescription),
      ),
    );
  }
}
