import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/widgets/icons/sunrise.icon.dart';
import 'package:weatherapp/core/widgets/icons/sunset.icon.dart';
import 'package:weatherapp/modules/today/notifiers/sunset_sunrise.notifier.dart';

class SunsetSunriseBarWidget extends ConsumerWidget {
  const SunsetSunriseBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(sunsetSunriseNotifierProvider);
    final sunset = notifier.sunset;
    final sunrise = notifier.sunrise;

    return Row(
      children: [
        if (sunrise != null) ...[
          _SunsetSunriseItemWidget(
            icon: const SunriseIcon(),
            label: Text(sunrise.format(context)),
          ),
          const PaddingSpacer.big(),
        ],
        if (sunset != null)
          _SunsetSunriseItemWidget(
            icon: const SunsetIcon(),
            label: Text(sunset.format(context)),
          ),
      ],
    );
  }
}

class _SunsetSunriseItemWidget extends StatelessWidget {
  const _SunsetSunriseItemWidget({
    required this.icon,
    required this.label,
  });

  final Widget icon;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        IconTheme.merge(
          data: const IconThemeData(size: 16),
          child: icon,
        ),
        const PaddingSpacer.small(),
        DefaultTextStyle.merge(
          style: theme.textTheme.labelMedium,
          child: label,
        ),
      ],
    );
  }
}
