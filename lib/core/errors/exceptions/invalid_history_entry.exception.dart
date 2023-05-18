import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/errors/exception_codes.dart';

class InvalidHistoryEntry extends AppException {
  InvalidHistoryEntry({super.innerException, super.innerStackTrace})
      : super(
          code: ExceptionCodes.invalidHistoryEntry.code,
        );
}
