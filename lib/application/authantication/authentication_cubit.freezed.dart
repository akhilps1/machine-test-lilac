// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  bool get showPhoneNuberScreen => throw _privateConstructorUsedError;
  Option<MainFailure> get failureOption => throw _privateConstructorUsedError;
  Option<String> get verificationIdOption => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;
  UserDetails? get userDetails => throw _privateConstructorUsedError;
  Option<MainFailure> get otpVerifyFailOption =>
      throw _privateConstructorUsedError;
  Option<Unit> get otpVerifySuccessOption => throw _privateConstructorUsedError;
  Option<Either<MainFailure, UserDetails>> get loginFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, Unit>> get logoutOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {String phoneNumber,
      String smsCode,
      bool showPhoneNuberScreen,
      Option<MainFailure> failureOption,
      Option<String> verificationIdOption,
      bool isInProgress,
      UserDetails? userDetails,
      Option<MainFailure> otpVerifyFailOption,
      Option<Unit> otpVerifySuccessOption,
      Option<Either<MainFailure, UserDetails>> loginFailureOrSuccess,
      Option<Either<MainFailure, Unit>> logoutOption});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? showPhoneNuberScreen = null,
    Object? failureOption = null,
    Object? verificationIdOption = null,
    Object? isInProgress = null,
    Object? userDetails = freezed,
    Object? otpVerifyFailOption = null,
    Object? otpVerifySuccessOption = null,
    Object? loginFailureOrSuccess = null,
    Object? logoutOption = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      showPhoneNuberScreen: null == showPhoneNuberScreen
          ? _value.showPhoneNuberScreen
          : showPhoneNuberScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<MainFailure>,
      verificationIdOption: null == verificationIdOption
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
      otpVerifyFailOption: null == otpVerifyFailOption
          ? _value.otpVerifyFailOption
          : otpVerifyFailOption // ignore: cast_nullable_to_non_nullable
              as Option<MainFailure>,
      otpVerifySuccessOption: null == otpVerifySuccessOption
          ? _value.otpVerifySuccessOption
          : otpVerifySuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Unit>,
      loginFailureOrSuccess: null == loginFailureOrSuccess
          ? _value.loginFailureOrSuccess
          : loginFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, UserDetails>>,
      logoutOption: null == logoutOption
          ? _value.logoutOption
          : logoutOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String smsCode,
      bool showPhoneNuberScreen,
      Option<MainFailure> failureOption,
      Option<String> verificationIdOption,
      bool isInProgress,
      UserDetails? userDetails,
      Option<MainFailure> otpVerifyFailOption,
      Option<Unit> otpVerifySuccessOption,
      Option<Either<MainFailure, UserDetails>> loginFailureOrSuccess,
      Option<Either<MainFailure, Unit>> logoutOption});
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? showPhoneNuberScreen = null,
    Object? failureOption = null,
    Object? verificationIdOption = null,
    Object? isInProgress = null,
    Object? userDetails = freezed,
    Object? otpVerifyFailOption = null,
    Object? otpVerifySuccessOption = null,
    Object? loginFailureOrSuccess = null,
    Object? logoutOption = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      showPhoneNuberScreen: null == showPhoneNuberScreen
          ? _value.showPhoneNuberScreen
          : showPhoneNuberScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<MainFailure>,
      verificationIdOption: null == verificationIdOption
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
      otpVerifyFailOption: null == otpVerifyFailOption
          ? _value.otpVerifyFailOption
          : otpVerifyFailOption // ignore: cast_nullable_to_non_nullable
              as Option<MainFailure>,
      otpVerifySuccessOption: null == otpVerifySuccessOption
          ? _value.otpVerifySuccessOption
          : otpVerifySuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Unit>,
      loginFailureOrSuccess: null == loginFailureOrSuccess
          ? _value.loginFailureOrSuccess
          : loginFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, UserDetails>>,
      logoutOption: null == logoutOption
          ? _value.logoutOption
          : logoutOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateImpl extends _AuthenticationState {
  const _$AuthenticationStateImpl(
      {required this.phoneNumber,
      required this.smsCode,
      required this.showPhoneNuberScreen,
      required this.failureOption,
      required this.verificationIdOption,
      required this.isInProgress,
      this.userDetails,
      required this.otpVerifyFailOption,
      required this.otpVerifySuccessOption,
      required this.loginFailureOrSuccess,
      required this.logoutOption})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String smsCode;
  @override
  final bool showPhoneNuberScreen;
  @override
  final Option<MainFailure> failureOption;
  @override
  final Option<String> verificationIdOption;
  @override
  final bool isInProgress;
  @override
  final UserDetails? userDetails;
  @override
  final Option<MainFailure> otpVerifyFailOption;
  @override
  final Option<Unit> otpVerifySuccessOption;
  @override
  final Option<Either<MainFailure, UserDetails>> loginFailureOrSuccess;
  @override
  final Option<Either<MainFailure, Unit>> logoutOption;

  @override
  String toString() {
    return 'AuthenticationState(phoneNumber: $phoneNumber, smsCode: $smsCode, showPhoneNuberScreen: $showPhoneNuberScreen, failureOption: $failureOption, verificationIdOption: $verificationIdOption, isInProgress: $isInProgress, userDetails: $userDetails, otpVerifyFailOption: $otpVerifyFailOption, otpVerifySuccessOption: $otpVerifySuccessOption, loginFailureOrSuccess: $loginFailureOrSuccess, logoutOption: $logoutOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.showPhoneNuberScreen, showPhoneNuberScreen) ||
                other.showPhoneNuberScreen == showPhoneNuberScreen) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.verificationIdOption, verificationIdOption) ||
                other.verificationIdOption == verificationIdOption) &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            (identical(other.otpVerifyFailOption, otpVerifyFailOption) ||
                other.otpVerifyFailOption == otpVerifyFailOption) &&
            (identical(other.otpVerifySuccessOption, otpVerifySuccessOption) ||
                other.otpVerifySuccessOption == otpVerifySuccessOption) &&
            (identical(other.loginFailureOrSuccess, loginFailureOrSuccess) ||
                other.loginFailureOrSuccess == loginFailureOrSuccess) &&
            (identical(other.logoutOption, logoutOption) ||
                other.logoutOption == logoutOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      phoneNumber,
      smsCode,
      showPhoneNuberScreen,
      failureOption,
      verificationIdOption,
      isInProgress,
      userDetails,
      otpVerifyFailOption,
      otpVerifySuccessOption,
      loginFailureOrSuccess,
      logoutOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState extends AuthenticationState {
  const factory _AuthenticationState(
          {required final String phoneNumber,
          required final String smsCode,
          required final bool showPhoneNuberScreen,
          required final Option<MainFailure> failureOption,
          required final Option<String> verificationIdOption,
          required final bool isInProgress,
          final UserDetails? userDetails,
          required final Option<MainFailure> otpVerifyFailOption,
          required final Option<Unit> otpVerifySuccessOption,
          required final Option<Either<MainFailure, UserDetails>>
              loginFailureOrSuccess,
          required final Option<Either<MainFailure, Unit>> logoutOption}) =
      _$AuthenticationStateImpl;
  const _AuthenticationState._() : super._();

  @override
  String get phoneNumber;
  @override
  String get smsCode;
  @override
  bool get showPhoneNuberScreen;
  @override
  Option<MainFailure> get failureOption;
  @override
  Option<String> get verificationIdOption;
  @override
  bool get isInProgress;
  @override
  UserDetails? get userDetails;
  @override
  Option<MainFailure> get otpVerifyFailOption;
  @override
  Option<Unit> get otpVerifySuccessOption;
  @override
  Option<Either<MainFailure, UserDetails>> get loginFailureOrSuccess;
  @override
  Option<Either<MainFailure, Unit>> get logoutOption;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
