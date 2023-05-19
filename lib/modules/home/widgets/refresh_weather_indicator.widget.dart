import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/modules/home/notifiers/weather.notifier.dart';

class RefreshWeatherIndicatorWidget extends ConsumerWidget {
  const RefreshWeatherIndicatorWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  Future<void> onRefresh(WidgetRef ref) {
    return ref.read(weatherNotifierProvider).reload();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () => onRefresh(ref),
      child: child,
    );
  }
}
