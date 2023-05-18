import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/modules/home/home.page.dart';
import 'package:weatherapp/modules/settings/widgets/settings.page.dart';

class Routes {
  Routes._();

  static String home() {
    return '/';
  }

  static String settings() {
    return '/settings';
  }

  static String developer() {
    return '/developer';
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
    path: '/developer',
    builder: (context, state) => const DevelopperInfoPage(),
  ),
]);
