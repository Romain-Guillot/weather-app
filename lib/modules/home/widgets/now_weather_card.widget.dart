import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/widgets/app_card.dart';
import 'package:weatherapp/core/widgets/weather_code_icon.widget.dart';
import 'package:weatherapp/extensions/weather_code.extension.dart';
import 'package:weatherapp/models/instant_weather_info.model.dart';
import 'package:weatherapp/modules/home/notifiers/now_weather.notifer.dart';

class NowWeatherCardWidget extends ConsumerWidget {
  const NowWeatherCardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final notifier = ref.watch(nowWeatherNotifierProvider);

    return AppCardWiget(
      function: OCardFunction.primaryHighlight,
      title: Text('Now'),
      child: ProviderValueBuilder<InstantWeatherInfoModel, AppException>(
        value: notifier.data,
        dataBuilder: (context, data) {
          final temperature = data.temperature;
          final weatherCode = data.weatherCode;

          return Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (temperature != null)
                      DefaultTextStyle.merge(
                        style: theme.textTheme.headlineLarge?.copyWith(
                          color: DefaultTextStyle.of(context).style.color,
                        ),
                        child: Text(
                          temperature.toString() + " °C", // TODO(RGU)
                        ),
                      ),
                    if (weatherCode != null)
                      DefaultTextStyle.merge(
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: DefaultTextStyle.of(context).style.color,
                        ),
                        child: Text(
                          weatherCode.label(context),
                        ),
                      ),
                  ],
                ),
              ),
              const PaddingSpacer(),
              if (weatherCode != null)
                WeatherCodeIconWidget(
                  code: weatherCode,
                  width: 85,
                ),
            ],
          );
        },
      ),
    );
  }
}
