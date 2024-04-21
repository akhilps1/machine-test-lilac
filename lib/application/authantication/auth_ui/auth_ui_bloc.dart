import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_ui_event.dart';
part 'auth_ui_state.dart';
part 'auth_ui_bloc.freezed.dart';

class AuthUiBloc extends Bloc<AuthUiEvent, AuthUiState> {
  AuthUiBloc() : super(AuthUiState.initial()) {
    on<ShowLogin>((event, emit) {
      emit(
        state.copyWith(showLogin: event.showLogin),
      );
    });

    on<ShowPassword>((event, emit) {
      emit(
        state.copyWith(showPassword: event.showPassword),
      );
    });

    on<ShowResendBurron>((event, emit) {
      emit(
        state.copyWith(showResendButton: event.showResendBurron),
      );
    });
  }
}
