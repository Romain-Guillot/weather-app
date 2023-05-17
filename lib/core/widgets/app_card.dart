import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';

class AppCardWiget extends StatelessWidget {
  const AppCardWiget({
    super.key,
    required this.title,
    required this.child,
    this.function = OCardFunction.surface,
    this.expand = false,
  });

  final OCardFunction function;
  final Widget title;
  final Widget child;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTextStyle.merge(
          style: theme.textTheme.titleMedium,
          child: title,
        ),
        const PaddingSpacer.small(),
        OCard(
          expand: expand,
          function: function,
          elevation: 1,
          hasContentPadding: true,
          fullWidth: true,
          child: child,
        )
      ],
    );
  }
}
