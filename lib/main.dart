import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/theme/theme.dart';
import 'package:weatherapp/env.dart';
import 'package:weatherapp/modules/settings/widgets/preferred_locale_builder.widget.dart';
import 'package:weatherapp/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Env.initializeWith(
    mocking: const String.fromEnvironment('MOCKING') == 'true',
    sentryEnabled: const String.fromEnvironment('SENTRY_ENABLED') == 'true',
    sentryURL: const String.fromEnvironment('SENTRY_URL'),
    openMeteoBaseURL: const String.fromEnvironment('OPEN_METEO_BASE_URL'),
  );

  runApp(const ProviderScope(
    child: WeatherApp(),
  ));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PreferredLocaleBuilderWidget(
      builder: (context, locale) => MaterialApp.router(
        title: 'Weather app',
        locale: locale,
        theme: lightTheme,
        darkTheme: darkTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: router,
      ),
    );
  }
}
