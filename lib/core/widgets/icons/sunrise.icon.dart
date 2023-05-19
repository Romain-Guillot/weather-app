import 'package:flutter/widgets.dart';
import 'package:weatherapp/core/widgets/icons/base_svg_icon.widget.dart';
import 'package:weatherapp/resources/resources.dart';

class SunriseIcon extends StatelessWidget {
  const SunriseIcon({
    super.key,
    this.size,
  });

  final double? size;

  @override
  Widget build(BuildContext context) {
    return BaseSvgIconWidget(
      icon: Images.sunrise,
      size: size,
    );
  }
}
