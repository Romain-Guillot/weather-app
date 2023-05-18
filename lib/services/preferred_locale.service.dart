import 'package:flutter/widgets.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:shared_preferences/shared_preferences.dart';

final preferredLocaleServiceProvider = Provider<PreferredLocaleService>(
  (ref) => PreferredLocaleService(
    logger: XLoggerImpl(
      context: PreferredLocaleService,
    ),
  ),
);

class PreferredLocaleService {
  PreferredLocaleService({required this.logger});

  final XLogger logger;

  Future<Locale?> retrieve() async {
    logger.d('retrieve()');

    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString('language.code');
    logger.d('retrieved language code: $code');

    Locale? locale;

    if (code != null) {
      try {
        locale = Locale(code);
      } catch (e) {
        // invalid language code
        logger.d('unable to build the Locale object from the save language code: $code');
      }
    }

    return locale;
  }

  Future<void> update(Locale locale) async {
    logger.d('Update locale to ${locale.languageCode}');

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language.code', locale.languageCode);
  }
}
