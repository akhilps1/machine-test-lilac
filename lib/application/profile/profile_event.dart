part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.pickImageFromGallary() = PickImageFromGallary;

  const factory ProfileEvent.pickImageFromCamera() = PickImageFromCamera;
  const factory ProfileEvent.clear() = Clear;
  const factory ProfileEvent.clearFailureAndSuccess() = ClearFailureAndSuccess;

  const factory ProfileEvent.updateProfile(UserDetails userDetails) =
      UpdateProfile;

  const factory ProfileEvent.changeTheme() = ChangeTheme;
  const factory ProfileEvent.getTheme() = GetTheme;
}
