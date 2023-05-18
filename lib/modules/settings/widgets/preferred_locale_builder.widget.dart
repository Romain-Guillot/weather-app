import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/modules/settings/notifiers/language.notifier.dart';

typedef PreferredLocaleBuilder = Widget Function(BuildContext context, Locale? locale);

class PreferredLocaleBuilderWidget extends ConsumerWidget {
  const PreferredLocaleBuilderWidget({
    super.key,
    required this.builder,
  });

  final PreferredLocaleBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(languageNotifierProvider);

    return builder(context, notifier.preferredLocale.value);
  }
}
