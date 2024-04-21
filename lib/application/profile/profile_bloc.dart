import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:machine_test/application/core/serveice/custom_toast.dart';
import 'package:machine_test/domain/authantication/models/user_details.dart';
import 'package:machine_test/domain/core/failures/failures.dart';
import 'package:machine_test/domain/profile/i_profile_facade.dart';
import 'package:machine_test/application/core/utils/debounce.dart';

part 'profile_event.dart';
part 'profile__state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileFacade _editUserFacade;

  ProfileBloc(this._editUserFacade) : super(ProfileState.initial()) {
    on<PickImageFromGallary>(_pickImageFromGallary);

    on<UpdateProfile>(_updateProfile);
    on<PickImageFromCamera>(_pickImageFromCamera);

    on<Clear>(_clear);
    on<ClearFailureAndSuccess>(_clearFailure);

    on<ChangeTheme>(_changeTheme,
        transformer: debounce(const Duration(milliseconds: 200)));

    on<GetTheme>(_getTheme);
  }

  void _pickImageFromGallary(
    PickImageFromGallary event,
    Emitter<ProfileState> emit,
  ) async {
    final failureOrSuccess = await _editUserFacade.pickImageFromGallary();

    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(
          failureOption: some(l),
        ),
        (r) => state.copyWith(
          successOption: some(r),
          imgUrl: r,
        ),
      ),
    );
  }

  void _pickImageFromCamera(
    PickImageFromCamera event,
    Emitter<ProfileState> emit,
  ) async {
    final failureOrSuccess = await _editUserFacade.pickImageFromCamera();

    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(
          failureOption: some(l),
        ),
        (r) => state.copyWith(
          successOption: some(r),
          imgUrl: r,
        ),
      ),
    );
  }

  void _clear(
    Clear event,
    Emitter<ProfileState> emit,
  ) async {
    emit(ProfileState.initial());
  }

  void _updateProfile(
    UpdateProfile event,
    Emitter<ProfileState> emit,
  ) async {
    final failureOrSuccess = await _editUserFacade.updateProfile(
      event.userDetails.copyWith(
        imageUrl: state.imgUrl ?? event.userDetails.imageUrl,
      ),
    );

    emit(
      failureOrSuccess.fold((l) {
        CustomToast.errorToast(message: l.errorMsg);
        return state.copyWith(
          failureOption: some(l),
        );
      }, (r) {
        CustomToast.successToast(message: 'Profile Updated Successfully.');
        return state.copyWith(
          successOption: some(''),
        );
      }),
    );
  }

  void _clearFailure(
    ClearFailureAndSuccess event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
      failureOption: none(),
      successOption: none(),
    ));
  }

  void _changeTheme(
    ChangeTheme event,
    Emitter<ProfileState> emit,
  ) async {
    await _editUserFacade.changeTheme(value: !state.isDark);

    emit(state.copyWith(isDark: !state.isDark));
  }

  void _getTheme(
    GetTheme event,
    Emitter<ProfileState> emit,
  ) async {
    final isDark = _editUserFacade.getTheme();
    emit(state.copyWith(isDark: isDark));
  }
}
