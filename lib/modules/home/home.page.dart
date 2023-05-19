import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/extensions/context.extension.dart';
import 'package:weatherapp/modules/forecast/forecast_weather.page.dart';
import 'package:weatherapp/modules/home/notifiers/weather.notifier.dart';
import 'package:weatherapp/modules/location_search/widgets/location_search_bar.widget.dart';
import 'package:weatherapp/modules/today/today_weather.page.dart';

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
                title: const LocationSearchBarWidget(),
                bottom: TabBar(
                  tabs: [
                    OTab(
                      icon: const Icon(Icons.today),
                      label: Text(context.strings.weatherTabNow),
                    ),
                    OTab(
                      icon: const Icon(Icons.query_stats_outlined),
                      label: Text(context.strings.weatherTabForecast),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
        body: const TabBarView(
          children: [
            TodayWeatherPageWidget(),
            ForecastWeatherPageWidget(),
          ],
        ),
      ),
    );
  }
}
