import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:machine_test/application/core/utils/typedefs/typedefs.dart';
import 'package:machine_test/domain/authantication/models/user_details.dart';
import 'package:machine_test/domain/core/failures/failures.dart';

class FirebaseStorageServeice {
  final FirebaseStorage firebaseStorage;
  FirebaseStorageServeice({
    required this.firebaseStorage,
  });

  Future<Either<MainFailure, String>> uploadImage({
    required Uint8List bytesImage,
    required String folderName,
  }) async {
    try {
      final storageRef = firebaseStorage
          .ref()
          .child(folderName)
          .child('${Timestamp.now().microsecondsSinceEpoch}webp_image.jpeg');

      final value = await storageRef.putData(
        bytesImage,
        SettableMetadata(contentType: 'image/jpeg'),
      );

      final url = await value.ref.getDownloadURL();

      return right(url);
    } on FirebaseException catch (e) {
      return left(
        MainFailure.serverFailure(errorMsg: e.code),
      );
    }
  }

  Future<Either<MainFailure, Unit>> removeImage({
    required String imageUrl,
  }) async {
    try {
      await firebaseStorage.refFromURL(imageUrl).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        MainFailure.serverFailure(errorMsg: e.code),
      );
    }
  }

  
}
