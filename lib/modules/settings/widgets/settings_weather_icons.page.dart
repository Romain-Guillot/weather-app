import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/enums/weather_code.enum.dart';
import 'package:weatherapp/core/widgets/weather_code_icon.widget.dart';
import 'package:weatherapp/extensions/weather_code.extension.dart';

class SettingsWeatherIconsPage extends StatefulWidget {
  const SettingsWeatherIconsPage({super.key});

  @override
  State<SettingsWeatherIconsPage> createState() => _SettingsWeatherIconsPageState();
}

class _SettingsWeatherIconsPageState extends State<SettingsWeatherIconsPage> {
  bool _dayMode = true;
  bool get dayMode => _dayMode;
  set dayMode(bool value) {
    setState(() => _dayMode = value);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: theme.paddings.medium),
            child: SegmentedButton<bool>(
              onSelectionChanged: (selection) {
                dayMode = selection.first;
              },
              selected: {dayMode},
              segments: const [
                ButtonSegment(
                  value: true,
                  icon: Icon(Icons.wb_sunny_outlined),
                ),
                ButtonSegment(
                  value: false,
                  icon: Icon(Icons.nightlight_outlined),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: WeatherCode.values.length,
              itemBuilder: (context, index) {
                final weatherCode = WeatherCode.values[index];
                final label = weatherCode.label(context);

                return OTile(
                  leading: WeatherCodeIconWidget(
                    code: weatherCode,
                    isDay: dayMode,
                  ),
                  child: Text(label),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
