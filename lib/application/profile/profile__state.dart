part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required String? imgUrl,
    required Option<String> successOption,
    required Option<MainFailure> failureOption,
    required bool isDark,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        imgUrl: null,
        successOption: none(),
        failureOption: none(),
        isDark: false,
      );
}
