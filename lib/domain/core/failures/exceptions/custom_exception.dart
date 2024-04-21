
import 'package:machine_test/domain/core/failures/value_objects.dart/value_failure.dart';

class CustomException implements Exception {
  CustomException(this.code, this.errorMsg);

  final String errorMsg;
  final int code;
}

class UnExpectedValueError extends Error {
  UnExpectedValueError(this.valueFailure);
  final ValueFailure valueFailure;
}
