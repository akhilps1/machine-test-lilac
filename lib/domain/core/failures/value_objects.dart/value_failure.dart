import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  factory ValueFailure.invalidMobileNumber({required String valueFailure}) =
      InvalidMobileNumber<T>;

  factory ValueFailure.invalidEmailAddress({required String valueFailure}) =
      InvalidEmailAddress<T>;

  factory ValueFailure.invalidInstagramLink({required String valueFailure}) =
      InvalidInstagramLink<T>;

  factory ValueFailure.invalidFacebookLink({required String valueFailure}) =
      InvalidFacebookLink<T>;
}
