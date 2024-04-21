import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:machine_test/application/core/serveice/encription.dart';
import 'package:machine_test/application/core/serveice/firebase_storage_serveice.dart';
import 'package:machine_test/domain/core/di/injection.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppInjectableModule {
  @preResolve
  Future<MediaPermissionServeice> get mediaPermissionServeice =>
      MediaPermissionServeice.init();
  @preResolve
  Future<SharedPreferences> get pref => SharedPreferences.getInstance();

  @lazySingleton
  FirebaseStorageServeice get firebaseStorageServeice =>
      FirebaseStorageServeice(
        firebaseStorage: sl<FirebaseStorage>(),
      );

  @lazySingleton
  VideoEncriptionServeice get videoEncriptionServeice =>
      VideoEncriptionServeice();

  @lazySingleton
  ImagePicker get imagePickerServeice => ImagePicker();
}

class MediaPermissionServeice {
  static Future<MediaPermissionServeice> init() async {
    final status = await Permission.storage.request();
    if (status.isGranted) {
    } else {
      await Permission.videos.request();
      await Permission.audio.request();
      await Permission.photos.request();
    }

    return MediaPermissionServeice();
  }
}
