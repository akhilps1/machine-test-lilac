import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:machine_test/domain/core/failures/exceptions/custom_exception.dart';
import 'package:machine_test/domain/core/failures/value_objects.dart/value_failure.dart';
import 'package:machine_test/domain/core/failures/value_objects.dart/value_validater.dart';

@immutable
abstract class ValueObjet<T> extends Equatable {
  const ValueObjet();

  Either<ValueFailure, T> get value;

  bool isValid() => value.isRight();

  /// Throws [UnExpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity same as writeing (right) => right
    return value.fold((l) => throw UnExpectedValueError(l), id);
  }

  @override
  List<Object> get props => [value];

  @override
  String toString() => 'Value($value)';
}

class MobileNumber extends ValueObjet<String> {
  @override
  final Either<ValueFailure, String> value;

  factory MobileNumber(String input) {
    return MobileNumber._(validateMobileNumber(input));
  }
  const MobileNumber._(this.value);
}

class EmailAddress extends ValueObjet<String> {
  @override
  final Either<ValueFailure, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
  const EmailAddress._(this.value);
}

class InstagramLink extends ValueObjet<String> {
  @override
  final Either<ValueFailure, String> value;

  factory InstagramLink(String input) {
    return InstagramLink._(validateInstagramLink(input));
  }
  const InstagramLink._(this.value);
}

class FacebookLink extends ValueObjet<String> {
  @override
  final Either<ValueFailure, String> value;

  factory FacebookLink(String input) {
    return FacebookLink._(validateFacebookLink(input));
  }
  const FacebookLink._(this.value);
}
