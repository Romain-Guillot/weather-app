import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ox_sdk/ox_sdk.dart';

class BaseSvgIconWidget extends StatelessWidget {
  const BaseSvgIconWidget({
    super.key,
    required this.icon,
    this.size,
  });

  final String icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);

    final iconSize = size ?? iconTheme.size;

    return SvgPicture.asset(
      icon,
      height: iconSize ?? 24,
      width: iconSize ?? 24,
      fit: BoxFit.contain,
      color: iconTheme.color,
    );
  }
}
