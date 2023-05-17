import 'package:ox_sdk/ox_sdk.dart';

enum ExceptionCodes {
  failToLoadWeather(10001),

  timeout(90001),
  unreachableApi(90002),
  serverCommunicationError(90003),
  unkwown(99999);

  const ExceptionCodes(this.code);

  final int code;

  static ExceptionCodes? byCode(int code) {
    return ExceptionCodes.values.firstWhereOrNull((e) => e.code == code);
  }
}
