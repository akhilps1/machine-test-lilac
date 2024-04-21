// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../../../application/authantication/authentication_cubit.dart' as _i3;
import '../../../application/core/serveice/encription.dart' as _i13;
import '../../../application/core/serveice/firebase_storage_serveice.dart'
    as _i8;
import '../../../application/core/serveice/pick_image.dart' as _i10;
import '../../../application/profile/profile_bloc.dart' as _i20;
import '../../../infrastrecture/authentication/i_auth_impl.dart' as _i15;
import '../../../infrastrecture/profile/i_profile_impl.dart' as _i17;
import '../../../infrastrecture/video_player/i_video_player_impl.dart' as _i19;
import '../../authantication/i_auth_facade.dart' as _i14;
import '../../profile/i_profile_facade.dart' as _i16;
import '../../video_player/i_video_player_facade.dart' as _i18;
import 'app_injectable_module.dart' as _i11;
import 'firebase_injectable_module.dart' as _i6;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final appInjectableModule = _$AppInjectableModule();
  gh.factory<_i3.AuthenticationCubit>(() => _i3.AuthenticationCubit());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  await gh.factoryAsync<_i6.FirebaseServeice>(
    () => firebaseInjectableModule.firebaseServeice,
    preResolve: true,
  );
  gh.lazySingleton<_i7.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i8.FirebaseStorageServeice>(
      () => appInjectableModule.firebaseStorageServeice);
  gh.lazySingleton<_i9.ImagePicker>(
      () => appInjectableModule.imagePickerServeice);
  gh.lazySingleton<_i10.ImagePickerServeice>(
      () => _i10.ImagePickerServeice(gh<_i9.ImagePicker>()));
  await gh.factoryAsync<_i11.MediaPermissionServeice>(
    () => appInjectableModule.mediaPermissionServeice,
    preResolve: true,
  );
  await gh.factoryAsync<_i12.SharedPreferences>(
    () => appInjectableModule.pref,
    preResolve: true,
  );
  gh.lazySingleton<_i13.VideoEncriptionServeice>(
      () => appInjectableModule.videoEncriptionServeice);
  gh.lazySingleton<_i14.IAuthFacade>(() => _i15.IAuthImpl(
        firebaseFirestore: gh<_i5.FirebaseFirestore>(),
        sharedPreferences: gh<_i12.SharedPreferences>(),
        firebaseAuth: gh<_i4.FirebaseAuth>(),
      ));
  gh.lazySingleton<_i16.IProfileFacade>(() => _i17.IProfileImpl(
        pickerServeice: gh<_i10.ImagePickerServeice>(),
        firestore: gh<_i5.FirebaseFirestore>(),
        storage: gh<_i7.FirebaseStorage>(),
        sharedPreferenceServeice: gh<_i12.SharedPreferences>(),
      ));
  gh.lazySingleton<_i18.IVideoPlayerFacade>(() => _i19.VideoPlayerImpl(
        gh<_i12.SharedPreferences>(),
        gh<_i13.VideoEncriptionServeice>(),
      ));
  gh.factory<_i20.ProfileBloc>(
      () => _i20.ProfileBloc(gh<_i16.IProfileFacade>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i6.FirebaseInjectableModule {}

class _$AppInjectableModule extends _i11.AppInjectableModule {}
