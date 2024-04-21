import 'package:dartz/dartz.dart';
import 'package:machine_test/domain/core/failures/value_objects.dart/value_failure.dart';

Either<ValueFailure<String>, String> validateMobileNumber(String input) {
  const mobileNumberRegex = r'^[0-9]{10}$';
  if (RegExp(mobileNumberRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidMobileNumber(valueFailure: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailAddress(valueFailure: input));
  }
}

Either<ValueFailure<String>, String> validateInstagramLink(String input) {
  const instagramLinkRegex = r'^https://www.instagram.com/[a-zA-Z0-9_.]+$';
  if (RegExp(instagramLinkRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidInstagramLink(valueFailure: input));
  }
}

Either<ValueFailure<String>, String> validateFacebookLink(String input) {
  const facebookLinkRegex = r'^https://www.facebook.com/[a-zA-Z0-9_.]+$';
  if (RegExp(facebookLinkRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidFacebookLink(valueFailure: input));
  }
}
