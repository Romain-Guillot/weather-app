import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/resources/icons.dart';
import 'package:weatherapp/router.dart';

class SettingsIconButtonWidget extends StatelessWidget {
  const SettingsIconButtonWidget({
    super.key,
  });

  void onOpenSettings(BuildContext context) {
    context.push(Routes.settings());
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onOpenSettings(context),
      icon: const Icon(AppIcons.setting),
    );
  }
}
