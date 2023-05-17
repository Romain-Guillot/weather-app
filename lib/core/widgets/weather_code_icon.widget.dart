import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/enums/weather_code.enum.dart';
import 'package:weatherapp/extensions/weather_code.extension.dart';

class WeatherCodeIconWidget extends StatelessWidget {
  const WeatherCodeIconWidget({
    super.key,
    required this.code,
    this.width,
    this.height,
  });

  final WeatherCode code;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      code.image,
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }
}
