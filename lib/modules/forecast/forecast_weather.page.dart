import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/modules/forecast/widgets/forecast_weather_card.widget.dart';
import 'package:weatherapp/modules/home/widgets/refresh_weather_indicator.widget.dart';

class ForecastWeatherPageWidget extends StatelessWidget {
  const ForecastWeatherPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RefreshWeatherIndicatorWidget(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: theme.margins.normal,
          right: theme.margins.normal,
          bottom: theme.margins.normal,
        ),
        child: const ForecastWeatherCardWidget(),
      ),
    );
  }
}
