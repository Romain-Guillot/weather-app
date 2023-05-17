import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/widgets/app_card.dart';
import 'package:weatherapp/core/widgets/weather_code_icon.widget.dart';
import 'package:weatherapp/models/forecast_weather_info.model.dart';
import 'package:weatherapp/modules/home/notifiers/forecast_weather.notifier.dart';

class ForecastWeatherCardWidget extends ConsumerWidget {
  const ForecastWeatherCardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(forecastWeatherNotifierProvider);

    return AppCardWiget(
      title: Text('Daily'),
      child: ProviderValueBuilder<List<ForecastWeatherInfoModel>, AppException>(
        value: notifier.data,
        dataBuilder: (context, data) => SizedBox(
          height: 999, // TODO sliver
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: data.length,
            separatorBuilder: (context, index) => const PaddingSpacer(),
            itemBuilder: (context, index) {
              final forecastWeather = data[index];

              return _ForecastItemWidget(
                forecastWeather: forecastWeather,
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ForecastItemWidget extends StatelessWidget {
  const _ForecastItemWidget({
    required this.forecastWeather,
  });

  final ForecastWeatherInfoModel forecastWeather;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final code = forecastWeather.weatherCode;
    final maxTemperature = forecastWeather.maxTemperature;
    final minTemperature = forecastWeather.maxTemperature ?? maxTemperature;

    return Row(
      children: [
        Expanded(
          child: Text(
            forecastWeather.timestamp.format(context, DateFormatType.writtenDateShort),
            style: theme.textTheme.titleSmall,
          ),
        ),
        if (minTemperature != null && maxTemperature != null)
          Text(
            '$minTemperature°/$maxTemperature°',
            style: theme.textTheme.labelMedium,
          ),
        if (code != null)
          Padding(
            padding: EdgeInsets.only(left: theme.paddings.medium),
            child: WeatherCodeIconWidget(
              code: code,
              height: 35,
            ),
          ),
      ],
    );
  }
}
