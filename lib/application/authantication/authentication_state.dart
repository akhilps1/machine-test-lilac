part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required String phoneNumber,
    required String smsCode,
    required bool showPhoneNuberScreen,
    required Option<MainFailure> failureOption,
    required Option<String> verificationIdOption,
    required bool isInProgress,
    UserDetails? userDetails,
    required Option<MainFailure> otpVerifyFailOption,
    required Option<Unit> otpVerifySuccessOption,
    required Option<Either<MainFailure, UserDetails>> loginFailureOrSuccess,
    required Option<Either<MainFailure, Unit>> logoutOption,
  }) = _AuthenticationState;
  const AuthenticationState._();

  factory AuthenticationState.initial() => AuthenticationState(
        phoneNumber: "",
        smsCode: "",
        showPhoneNuberScreen: true,
        userDetails: null,
        failureOption: none(),
        verificationIdOption: none(),
        isInProgress: false,
        otpVerifySuccessOption: none(),
        loginFailureOrSuccess: none(),
        otpVerifyFailOption: none(),
        logoutOption: none(),
      );
  bool get displayNextButton => verificationIdOption.isNone() && !isInProgress;
  bool get displaySmsCodeForm => verificationIdOption.isSome();
  bool get displayLoadingIndicator => !displayNextButton && !displaySmsCodeForm;
}

extension AuthenticationStateX on AuthenticationState {
  bool get isAuthenticated => userDetails != null;
}
