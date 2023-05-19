import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/extensions/context.extension.dart';
import 'package:weatherapp/modules/settings/widgets/developper_mode_tile.dart';
import 'package:weatherapp/modules/settings/widgets/settings_language_tile.widget.dart';
import 'package:weatherapp/modules/settings/widgets/weather_icons_info_tile.widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.settingsAppSettings),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(theme.margins.normal),
        child: const Column(
          children: [
            SettingsLanguageTileWidget(),
            PaddingSpacer(),
            WeatherIconsInfoTileWidget(),
            PaddingSpacer(),
            DeveloperModeTileWidget(),
            PaddingSpacer.big(),
            OAppVersionInfoWidget(),
          ],
        ),
      ),
    );
  }
}
