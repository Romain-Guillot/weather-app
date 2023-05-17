import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weatherapp/core/theme/theme.dart';
import 'package:weatherapp/env.dart';
import 'package:weatherapp/extensions/context.extension.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Env.initializeWith(
    mocking: const String.fromEnvironment('MOCKING') == 'true',
    sentryEnabled: const String.fromEnvironment('SENTRY_ENABLED') == 'true',
    sentryURL: const String.fromEnvironment('SENTRY_URL'),
    openMeteoBaseURL: const String.fromEnvironment('OPEN_METEO_BASE_URL'),
  );

  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather app',
      theme: lightTheme,
      darkTheme: darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.appName),
      ),
    );
  }
}
