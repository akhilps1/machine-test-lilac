import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:machine_test/application/core/serveice/pick_image.dart';
import 'package:machine_test/application/core/utils/typedefs/typedefs.dart';
import 'package:machine_test/domain/authantication/models/user_details.dart';
import 'package:machine_test/domain/core/failures/failures.dart';
import 'package:machine_test/domain/profile/i_profile_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IProfileFacade)
class IProfileImpl implements IProfileFacade {
  IProfileImpl({
    required ImagePickerServeice pickerServeice,
    required FirebaseFirestore firestore,
    required FirebaseStorage storage,
    required SharedPreferences sharedPreferenceServeice,
  })  : _imagePickerServeice = pickerServeice,
        _firestore = firestore,
        _firebaseStorage = storage,
        _sharedPreferenceServeice = sharedPreferenceServeice;

  final ImagePickerServeice _imagePickerServeice;
  final FirebaseStorage _firebaseStorage;
  final FirebaseFirestore _firestore;
  final SharedPreferences _sharedPreferenceServeice;
  @override
  ResultFuture<String> pickImageFromCamera() async {
    final failureOrSuccess = await _imagePickerServeice.selectImageFromCamera();
    return failureOrSuccess.fold(
      left,
      (success) async {
        final data = await uploadImages(success);
        return right(data);
      },
    );
  }

  @override
  ResultFuture<String> pickImageFromGallary() async {
    final failureOrSuccess =
        await _imagePickerServeice.selectImageFromGallery();
    return failureOrSuccess.fold(
      left,
      (success) async {
        final data = await uploadImages(success);
        return right(data);
      },
    );
  }

  Future<String> uploadImages(XFile image) async {
    Reference storageRef = _firebaseStorage
        .ref()
        .child('profile_images')
        .child('${Timestamp.now().microsecondsSinceEpoch}webp_image.jpeg');

    final value = await storageRef.putFile(
      File(image.path),
      SettableMetadata(contentType: 'image/jpeg'),
    );
    final url = await value.ref.getDownloadURL();
    return url;
  }

  @override
  ResultFuture<Unit> updateProfile(UserDetails userDetails) async {
    try {
      await _firestore.collection('users').doc(userDetails.id).update(
            userDetails.toMap(),
          );
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        MainFailure.serverFailure(errorMsg: e.code),
      );
    }
  }

  @override
  ResultFuture<Unit> changeTheme({required bool value}) async {
    await _sharedPreferenceServeice.setBool('isDark', value);

    return right(unit);
  }

  @override
  bool getTheme() {
    final value = _sharedPreferenceServeice.getBool('isDark');
    return value ?? false;
  }
}
