part of 'auth_ui_bloc.dart';

@freezed
class AuthUiState with _$AuthUiState {
  const factory AuthUiState({
    required bool showLogin,
    required bool showPassword,
    required bool showResendButton,
  }) = _AuthUiState;

  factory AuthUiState.initial() => const AuthUiState(
        showLogin: true,
        showPassword: false,
        showResendButton: false,
      );
}
