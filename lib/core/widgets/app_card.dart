import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';

class AppCardWiget extends StatelessWidget {
  const AppCardWiget({
    super.key,
    this.title,
    required this.child,
    this.function = OCardFunction.surface,
    this.expand = false,
    this.hasContentPadding = true,
    this.action,
  });

  final OCardFunction function;
  final Widget? title;
  final Widget child;
  final bool expand;
  final bool hasContentPadding;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final action = this.action;
    final title = this.title;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: title != null
                  ? DefaultTextStyle.merge(
                      style: theme.textTheme.titleMedium,
                      child: title,
                    )
                  : const SizedBox.shrink(),
            ),
            if (action != null) action,
          ],
        ),
        if (action == null) const PaddingSpacer.small(),
        OCard(
          expand: expand,
          function: function,
          elevation: 2,
          hasContentPadding: hasContentPadding,
          fullWidth: true,
          child: child,
        )
      ],
    );
  }
}
