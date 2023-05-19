import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/extensions/context.extension.dart';
import 'package:weatherapp/resources/icons.dart';
import 'package:weatherapp/router.dart';

class DeveloperModeTileWidget extends StatelessWidget {
  const DeveloperModeTileWidget({super.key});

  void onOpen(BuildContext context) {
    context.push(Routes.developer());
  }

  @override
  Widget build(BuildContext context) {
    return OCard(
      onTap: () => onOpen(context),
      function: OCardFunction.surface,
      hasContentPadding: true,
      title: OTitle(
        icon: const Icon(AppIcons.developerMode),
        label: Text(context.strings.settingsDeveloperMode),
      ),
    );
  }
}
