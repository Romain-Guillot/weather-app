import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/widgets/app_card.dart';
import 'package:weatherapp/core/widgets/weather_code_icon.widget.dart';
import 'package:weatherapp/models/instant_weather_info.model.dart';
import 'package:weatherapp/modules/home/notifiers/today_weather.notifier.dart';

class TodayWeatherCardWidget extends ConsumerWidget {
  const TodayWeatherCardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(todayWeatherNotifierProvider);

    return AppCardWiget(
      title: Text('Hourly'),
      child: ProviderValueBuilder<List<InstantWeatherInfoModel>, AppException>(
        value: notifier.data,
        dataBuilder: (context, data) => SizedBox(
          height: 85,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            separatorBuilder: (context, index) => const PaddingSpacer(),
            itemBuilder: (context, index) {
              final instantWeather = data[index];

              return _InstantItemWidget(
                instantWeather: instantWeather,
              );
            },
          ),
        ),
      ),
    );
  }
}

class _InstantItemWidget extends StatelessWidget {
  const _InstantItemWidget({
    required this.instantWeather,
  });

  final InstantWeatherInfoModel instantWeather;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final time = TimeOfDay.fromDateTime(instantWeather.timestamp);
    final code = instantWeather.weatherCode;
    final temperature = instantWeather.temperature;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DefaultTextStyle.merge(
          style: theme.textTheme.titleSmall,
          child: Text(time.format(context)),
        ),
        if (code != null)
          WeatherCodeIconWidget(
            code: code,
            height: 40,
          )
        else
          SizedBox(height: 40),
        if (temperature != null)
          DefaultTextStyle.merge(
            style: theme.textTheme.labelSmall,
            child: Text(
              temperature.toString() + " °C", // TODO(RGU)
            ),
          ),
      ],
    );
  }
}
