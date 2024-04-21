import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:machine_test/application/core/serveice/custom_toast.dart';
import 'package:machine_test/domain/authantication/i_auth_facade.dart';
import 'package:machine_test/domain/authantication/models/user_details.dart';
import 'package:machine_test/domain/core/di/injection.dart';
import 'package:machine_test/domain/core/failures/failures.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

@injectable
class AuthenticationCubit extends Cubit<AuthenticationState> {
  late final IAuthFacade _authService;

  StreamSubscription<Either<MainFailure, String>>?
      _phoneNumberSignInSubscription;

  StreamSubscription<Either<MainFailure, UserDetails>>?
      _userDetailsSubscription;

  final Duration verificationCodeTimeout = const Duration(seconds: 60);
  AuthenticationCubit() : super(AuthenticationState.initial()) {
    _authService = sl<IAuthFacade>();
  }

  @override
  Future<void> close() async {
    await _phoneNumberSignInSubscription?.cancel();
    await _userDetailsSubscription?.cancel();
    _authService.clesrToken();
    return super.close();
  }

  void smsCodeChanged({
    required String smsCode,
  }) {
    emit(state.copyWith(smsCode: smsCode));
  }

  void phoneNumberChanged({
    required String phoneNumber,
  }) {
    emit(state.copyWith(phoneNumber: phoneNumber));
  }

  void reset() {
    emit(
      state.copyWith(
        failureOption: none(),
        verificationIdOption: none(),
        isInProgress: false,
      ),
    );
  }

  void getSignedInUser(String uid) async {
    _userDetailsSubscription =
        _authService.getUserDetails(uid: uid).listen((failureOrSuccess) {
      emit(
        failureOrSuccess.fold(
          (failure) => state.copyWith(
            loginFailureOrSuccess: some(failureOrSuccess),
          ),
          (user) {
            return state.copyWith(
              userDetails: user,
              loginFailureOrSuccess:
                  state.userDetails == null ? some(failureOrSuccess) : none(),
            );
          },
        ),
      );
      log(failureOrSuccess.toString());
    });
  }

  void veryfyPhoneNo() {
    if (state.phoneNumber.isEmpty || state.phoneNumber.length != 10) {
      CustomToast.errorToast(message: 'Invalid phone number');
      return;
    }

    emit(state.copyWith(isInProgress: true, failureOption: none()));

    _phoneNumberSignInSubscription =
        _authService.veryfyPhoneNo(phoneNo: state.phoneNumber).listen(
              (Either<MainFailure, String> failureOrVerificationId) =>
                  failureOrVerificationId.fold(
                (MainFailure failure) {
                  //This is the part where we receive failures like 'invalidPhoneNumber', 'smsTimeout' etc.
                  _showError(failure);
                  emit(
                    state.copyWith(
                      failureOption: some(failure),
                      isInProgress: false,
                    ),
                  );
                },
                (String verificationId) {
                  // Catch this in Bloc Listener and take the user to SMS code entry page.
                  emit(
                    state.copyWith(
                      verificationIdOption: some(verificationId),
                      isInProgress: false,
                    ),
                  );
                },
              ),
            );
  }

  void verifyOtp() {
    state.verificationIdOption.fold(
      () {
        //Verification id does not exist. This should not happen.
      },
      (String verificationId) async {
        emit(
          state.copyWith(
            isInProgress: true,
          ),
        );
        final Either<MainFailure, Unit> failureOrSuccess =
            await _authService.verifyOtp(
          smsCode: state.smsCode,
          verificationId: verificationId,
          userDetails: UserDetails.initial(),
        );

        emit(
          failureOrSuccess.fold(
            (l) {
              _showError(l);
              return state.copyWith(
                isInProgress: false,
                otpVerifyFailOption: some(l),
              );
            },
            (r) => state.copyWith(
              isInProgress: false,
              otpVerifySuccessOption: some(r),
            ),
          ),
        );
      },
    );
  }

  void logout() async {
    final failureOrSuccess = await _authService.logout();

    emit(AuthenticationState.initial().copyWith(
      logoutOption: some(failureOrSuccess),
    ));
  }

  void clearFailure() {
    emit(
      state.copyWith(
        failureOption: none(),
        otpVerifyFailOption: none(),
        loginFailureOrSuccess: none(),
      ),
    );
  }

  void backToLogin() {
    _authService.clesrToken();
    emit(
      AuthenticationState.initial(),
    );
  }

  void _showError(MainFailure failure) {
    failure.maybeMap(
      orElse: () {},
      serverFailure: (value) {
        CustomToast.errorToast(message: value.errorMsg);
      },
    );
  }

  void setShowPhoneNuberScreen() {
    emit(
      state.copyWith(
        showPhoneNuberScreen: false,
      ),
    );
  }

  void clearSuccess() {
    emit(
      state.copyWith(
        otpVerifySuccessOption: none(),
        verificationIdOption: none(),
        loginFailureOrSuccess: none(),
      ),
    );
  }

  void checkAuthStatus() {
    final result = _authService.checkAuthStatus();
    result.fold(
      (l) => emit(
        state.copyWith(
          failureOption: some(l),
        ),
      ),
      (r) {
        getSignedInUser(r);
      },
    );
  }
}
