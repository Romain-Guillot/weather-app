import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:weatherapp/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.cloudLightningRain).existsSync(), true);
    expect(File(Images.cloud).existsSync(), true);
    expect(File(Images.cloudLightning).existsSync(), true);
    expect(File(Images.cloudRain).existsSync(), true);
    expect(File(Images.cloudSnow).existsSync(), true);
    expect(File(Images.cloudWind).existsSync(), true);
    expect(File(Images.fog).existsSync(), true);
    expect(File(Images.moon).existsSync(), true);
    expect(File(Images.sunBehindCloud).existsSync(), true);
    expect(File(Images.sunLargeCloud).existsSync(), true);
    expect(File(Images.sunRainCloud).existsSync(), true);
    expect(File(Images.sunSmallCloud).existsSync(), true);
    expect(File(Images.sun).existsSync(), true);
    expect(File(Images.tornado).existsSync(), true);
  });
}
