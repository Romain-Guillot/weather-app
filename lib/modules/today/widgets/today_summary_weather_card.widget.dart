import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/widgets/app_card.dart';
import 'package:weatherapp/core/widgets/weather_code_icon.widget.dart';
import 'package:weatherapp/extensions/context.extension.dart';
import 'package:weatherapp/extensions/weather_code.extension.dart';
import 'package:weatherapp/models/instant_weather_info.model.dart';
import 'package:weatherapp/modules/today/notifiers/now_weather.notifer.dart';
import 'package:weatherapp/modules/today/widgets/sunset_sunrise_bar.widget.dart';
import 'package:weatherapp/resources/icons.dart';
import 'package:weatherapp/services/share.service.dart';

class TodaySummaryWeatherCardWidget extends ConsumerStatefulWidget {
  const TodaySummaryWeatherCardWidget({super.key});

  @override
  ConsumerState<TodaySummaryWeatherCardWidget> createState() => _TodaySummaryWeatherCardWidgetState();
}

class _TodaySummaryWeatherCardWidgetState extends ConsumerState<TodaySummaryWeatherCardWidget> {
  final imageConverterController = WidgetImageConverterController();

  Future<void> onShare() async {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      try {
        final images = await imageConverterController.convert();
        if (images != null) {
          ref.read(shareServiceProvider).share(images, 'image/png');
        }
      } catch (e) {
        showErrorSnackbar(
          context: context,
          content: Text(context.strings.excUnableToShareWeather),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final notifier = ref.watch(nowWeatherNotifierProvider);

    return WidgetImageConverter(
      controller: imageConverterController,
      child: AppCardWiget(
        hasContentPadding: false,
        function: OCardFunction.primaryHighlight,
        child: Padding(
          padding: EdgeInsets.only(
            left: theme.paddings.medium,
            top: theme.paddings.medium,
            bottom: notifier.data.hasData ? theme.paddings.small : theme.paddings.medium,
            right: theme.paddings.medium,
          ),
          child: ProviderValueBuilder<InstantWeatherInfoModel, AppException>(
            value: notifier.data,
            dataBuilder: (context, data) {
              final temperature = data.temperature;
              final weatherCode = data.weatherCode;
              final isDay = data.isDay;

              return Column(
                children: [
                  Row(
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
                                child: Text(context.strings.temperatureFormattedValue(temperature)),
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
                          isDay: isDay,
                        ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: SunsetSunriseBarWidget(),
                      ),
                      IconButton(
                        onPressed: onShare,
                        icon: const Icon(AppIcons.share),
                      )
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
