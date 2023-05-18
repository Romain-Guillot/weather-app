import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/modules/settings/widgets/developper_mode_tile.dart';
import 'package:weatherapp/modules/settings/widgets/settings_language_tile.widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(theme.margins.normal),
        child: const Column(
          children: [
            SettingsLanguageTileWidget(),
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
