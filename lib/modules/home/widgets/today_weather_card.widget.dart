import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/widgets/app_card.dart';
import 'package:weatherapp/core/widgets/weather_code_icon.widget.dart';
import 'package:weatherapp/models/instant_weather_info.model.dart';
import 'package:weatherapp/modules/home/notifiers/today_weather.notifier.dart';
import 'package:weatherapp/resources/icons.dart';

double _kInstantItemWidth = 65.0;
double _kInstantItemHeight = 110.0;
double _kHeaderLabelWidth = 100.0;
double _kNumberOfHoursInADay = 24.0;
double _kHeaderHeight = 35.0;

extension ListExtension<T> on List<T> {
  List<T> removeFollowingDuplicates() {
    final result = <T>[];
    if (isNotEmpty) {
      result.add(first);
    }

    for (final e in sublist(1)) {
      if (result.last != e) {
        result.add(e);
      }
    }

    return result;
  }
}

class TodayWeatherCardWidget extends ConsumerStatefulWidget {
  const TodayWeatherCardWidget({super.key});

  @override
  ConsumerState<TodayWeatherCardWidget> createState() => _TodayWeatherCardWidgetState();
}

class _TodayWeatherCardWidgetState extends ConsumerState<TodayWeatherCardWidget> {
  final headerScrollController = ScrollController();
  final primaryScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    primaryScrollController.addListener(() {
      headerScrollController.jumpTo(primaryScrollController.offset);
    });

    onReinitPosition();
  }

  void onReinitPosition() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final nowIndex = ref.read(todayWeatherNotifierProvider).nowIndex;
      if (primaryScrollController.hasClients) {
        primaryScrollController.animateTo(
          nowIndex * _kInstantItemWidth,
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeOutBack,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final notifier = ref.watch(todayWeatherNotifierProvider);

    ref.listen(todayWeatherNotifierProvider, (_, notifier) {
      onReinitPosition();
    });

    return AppCardWiget(
      title: Text('Temperature'),
      action: IconButton(
        onPressed: onReinitPosition,
        icon: const Icon(AppIcons.reinit),
      ),
      hasContentPadding: false,
      child: ProviderValueBuilder<List<InstantWeatherInfoModel>, AppException>(
        value: notifier.data,
        loadingBuilder: (context) => Padding(
          padding: EdgeInsets.all(theme.paddings.medium),
          child: const OLoadingIndicator(),
        ),
        dataBuilder: (context, data) => SizedBox(
          height: _kInstantItemHeight + _kHeaderHeight,
          child: Column(
            children: [
              SizedBox(
                height: _kHeaderHeight,
                child: CustomScrollView(
                  controller: headerScrollController,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  slivers: [
                    for (final weekDay in data.map((e) => e.timestamp.format(context, DateFormatType.writtenDateShort)).toSet()) ...[
                      MultiSliver(
                        pushPinnedChildren: true,
                        children: [
                          SliverPinnedHeader(
                            child: SizedBox(
                              width: _kHeaderLabelWidth,
                              child: Padding(
                                padding: EdgeInsets.only(left: theme.paddings.medium, top: theme.paddings.medium),
                                child: Text(
                                  weekDay,
                                  overflow: TextOverflow.fade,
                                  softWrap: false,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: SizedBox(
                              width: (_kInstantItemWidth * _kNumberOfHoursInADay) - _kHeaderLabelWidth,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
              SizedBox(
                height: _kInstantItemHeight,
                child: CustomScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: primaryScrollController,
                  slivers: [
                    MultiSliver(
                      pushPinnedChildren: true,
                      children: [
                        SliverList(
                          delegate: SliverChildListDelegate(data
                              .map((e) => SizedBox(
                                    width: _kInstantItemWidth,
                                    child: _InstantItemWidget(
                                      instantWeather: e,
                                    ),
                                  ))
                              .toList()),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
    final isDay = instantWeather.isDay;

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
            height: 45,
            isDay: isDay,
          )
        else
          SizedBox(height: 45),
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
