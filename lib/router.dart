import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/modules/home/home.page.dart';
import 'package:weatherapp/modules/settings/widgets/settings.page.dart';
import 'package:weatherapp/modules/settings/widgets/settings_weather_icons.page.dart';

class Routes {
  Routes._();

  static String home() {
    return '/';
  }

  static String settings() {
    return '/settings';
  }

  static String developer() {
    return '/settings/developer';
  }

  static String icons() {
    return '/settings/icons';
  }
}

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/settings',
    builder: (context, state) => const SettingsPage(),
  ),
  GoRoute(
    path: '/settings/developer',
    builder: (context, state) => const DevelopperInfoPage(),
  ),
  GoRoute(
    path: '/settings/icons',
    builder: (context, state) => const SettingsWeatherIconsPage(),
  ),
]);
