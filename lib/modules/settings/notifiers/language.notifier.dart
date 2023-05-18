import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/services/preferred_locale.service.dart';

final languageNotifierProvider = ChangeNotifierProvider((ref) {
  final notifier = LanguageNotifier(
    logger: XLoggerImpl(context: LanguageNotifier),
    localeService: ref.watch(preferredLocaleServiceProvider),
  );
  notifier.init();

  return notifier;
});

class LanguageNotifier extends ChangeNotifier {
  LanguageNotifier({
    required this.logger,
    required this.localeService,
  });

  final XLogger logger;
  final PreferredLocaleService localeService;

  late final preferredLocale = ProviderValue<Locale?, AppException>(notify: notifyListeners);

  List<Locale> get availableLocales => AppLocalizations.supportedLocales;

  Future<void> init() async {
    try {
      preferredLocale.value = await localeService.retrieve();
    } on AppException catch (e) {
      logger.exception('Unable to retrieve preferred locale', e);
    }
  }

  Future<void> changeLocale(Locale locale) async {
    preferredLocale.value = locale;
    try {
      await localeService.update(locale);
    } on AppException catch (e) {
      logger.exception('Unable to update preferred locale', e);
    }
  }
}
