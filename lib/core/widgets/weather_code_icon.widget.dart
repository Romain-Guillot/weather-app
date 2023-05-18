import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherapp/core/enums/weather_code.enum.dart';
import 'package:weatherapp/extensions/weather_code.extension.dart';

class WeatherCodeIconWidget extends StatelessWidget {
  const WeatherCodeIconWidget({
    super.key,
    required this.code,
    this.width,
    this.height,
    required this.isDay,
  });

  final WeatherCode code;
  final bool isDay;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      code.image(isDay),
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }
}
