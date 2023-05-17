import 'dart:async';

import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/errors/exception_codes.dart';

Future<T> callOrThrow<T>(FutureOr<T> Function() func) async {
  try {
    return await func.call();
  } on AppException {
    rethrow;
  } on ApiException catch (e, s) {
    throw AppException(
      code: e.code,
      innerException: e,
      innerStackTrace: s,
    );
  } on ServerCommunicationError catch (e, s) {
    throw AppException(
      code: ExceptionCodes.serverCommunicationError.code,
      innerException: e,
      innerStackTrace: s,
    );
  } on Exception catch (e, s) {
    throw AppException(
      code: ExceptionCodes.unkwown.code,
      innerException: e,
      innerStackTrace: s,
    );
  } catch (e, s) {
    throw AppException(
      code: ExceptionCodes.unkwown.code,
      innerStackTrace: s,
    );
  }
}
