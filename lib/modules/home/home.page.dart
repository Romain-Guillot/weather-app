import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/modules/home/notifiers/weather.notifier.dart';
import 'package:weatherapp/modules/home/widgets/forecast_weather_card.widget.dart';
import 'package:weatherapp/modules/location_search/widgets/location_search_bar.widget.dart';
import 'package:weatherapp/modules/home/widgets/now_weather_card.widget.dart';
import 'package:weatherapp/modules/home/widgets/today_weather_card.widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  Future<void> onRefresh(WeatherNotifier notifier) {
    return notifier.reload();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(weatherNotifierProvider);

    return Scaffold(
      body: SafeArea(
        child: _NarrowDelegate(
          onRefresh: () => onRefresh(notifier),
        ),
      ),
    );
  }
}

class _NarrowDelegate extends StatelessWidget {
  const _NarrowDelegate({
    required this.onRefresh,
  });

  final RefreshCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverPadding(
              padding: EdgeInsets.all(theme.margins.normal),
              sliver: SliverAppBar(
                clipBehavior: Clip.none,
                scrolledUnderElevation: 0.0,
                titleSpacing: 0.0,
                backgroundColor: Colors.transparent,
                floating: true,
                title: LocationSearchBarWidget(),
                bottom: TabBar(
                  tabs: [
                    OTab(
                      icon: Icon(Icons.today),
                      label: Text('Now'),
                    ),
                    OTab(
                      icon: Icon(Icons.query_stats_outlined),
                      label: Text('Forecast'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
        body: const TabBarView(
          children: [
            TabBarViewWrapper(
              child: TodayWeatherPageWidget(),
            ),
            TabBarViewWrapper(
              child: ForecastWeatherPageWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarViewWrapper extends StatelessWidget {
  const TabBarViewWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(left: theme.margins.normal, right: theme.margins.normal, bottom: theme.margins.normal),
      child: child,
    );
  }
}

class TodayWeatherPageWidget extends StatelessWidget {
  const TodayWeatherPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          NowWeatherCardWidget(),
          PaddingSpacer.big(),
          TodayWeatherCardWidget(),
          PaddingSpacer.big(),
          TodayWeatherCardWidget(),
          PaddingSpacer.big(),
          TodayWeatherCardWidget(),
          PaddingSpacer.big(),
          TodayWeatherCardWidget(),
          PaddingSpacer.big(),
          TodayWeatherCardWidget(),
          PaddingSpacer.big(),
          TodayWeatherCardWidget(),
          PaddingSpacer.big(),
          TodayWeatherCardWidget(),
        ],
      ),
    );
  }
}

class ForecastWeatherPageWidget extends StatelessWidget {
  const ForecastWeatherPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: ForecastWeatherCardWidget()); // TODO
  }
}
