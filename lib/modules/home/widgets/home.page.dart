import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/models/weather.model.dart';
import 'package:weatherapp/modules/home/notifiers/weather.notifier.dart';
import 'package:weatherapp/modules/home/widgets/forecast_weather_card.widget.dart';
import 'package:weatherapp/modules/home/widgets/location_search_bar.widget.dart';
import 'package:weatherapp/modules/home/widgets/now_weather_card.widget.dart';
import 'package:weatherapp/modules/home/widgets/today_weather_card.widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(weatherNotifierProvider);

    return Scaffold(
      body: SafeArea(
        child: ProviderValueBuilder(
          value: notifier.weather,
          dataBuilder: (context, weather) => _NarrowDelegate(
            weather: weather,
          ),
        ),
      ),
    );
  }
}

class _NarrowDelegate extends StatelessWidget {
  const _NarrowDelegate({
    super.key,
    required this.weather,
  });

  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(theme.margins.normal),
          sliver: const SliverAppBar(
            clipBehavior: Clip.none,
            shape: StadiumBorder(),
            scrolledUnderElevation: 0.0,
            titleSpacing: 0.0,
            backgroundColor: Colors.transparent,
            floating: true,
            title: LocationSearchBarWidget(),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(theme.margins.normal),
          sliver: const SliverToBoxAdapter(
            child: Column(
              children: [
                NowWeatherCardWidget(),
                PaddingSpacer.big(),
                TodayWeatherCardWidget(),
                PaddingSpacer.big(),
                ForecastWeatherCardWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
