part of 'auth_ui_bloc.dart';

@freezed
class AuthUiEvent with _$AuthUiEvent {
  const factory AuthUiEvent.showLogin(bool showLogin) = ShowLogin;
  const factory AuthUiEvent.showPassword(bool showPassword) = ShowPassword;
  const factory AuthUiEvent.showResendBurron(bool showResendBurron) =
      ShowResendBurron;
}
