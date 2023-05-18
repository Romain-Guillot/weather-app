import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/modules/settings/notifiers/language.notifier.dart';
import 'package:weatherapp/resources/icons.dart';

class SettingsLanguageTileWidget extends StatelessWidget {
  const SettingsLanguageTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OCard(
      function: OCardFunction.surface,
      hasContentPadding: true,
      title: OTitle(
        icon: const Icon(AppIcons.language),
        label: Text('Language'),
      ),
      child: const _LanguagesDropdown(),
    );
  }
}

class _LanguagesDropdown extends ConsumerWidget {
  const _LanguagesDropdown();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(languageNotifierProvider);
    final locale = Localizations.localeOf(context);

    return DropdownButtonHideUnderline(
      child: DropdownButton<Locale>(
        isExpanded: true,
        value: locale,
        onChanged: (selectedLocale) {
          if (selectedLocale != null) {
            notifier.changeLocale(selectedLocale);
          }
        },
        items: [
          for (final locale in notifier.availableLocales)
            DropdownMenuItem(
              value: locale,
              child: Text(locale.name ?? locale.toLanguageTag()),
            ),
        ],
      ),
    );
  }
}
