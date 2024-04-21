import 'package:dartz/dartz.dart';
import 'package:machine_test/application/core/utils/typedefs/typedefs.dart';
import 'package:machine_test/domain/authantication/models/user_details.dart';

abstract class IProfileFacade {
  ResultFuture<String> pickImageFromGallary() {
    throw UnimplementedError(
      'pickImage() not implemented, implement this function before you call it.',
    );
  }

  ResultFuture<String> pickImageFromCamera() {
    throw UnimplementedError(
      'pickImage() not implemented, implement this function before you call it.',
    );
  }

  ResultFuture<Unit> updateProfile(UserDetails userDetails) {
    throw UnimplementedError(
      'updateProfile() not implemented, implement this function before you call it.',
    );
  }

  ResultFuture<Unit> changeTheme({required bool value}) {
    throw UnimplementedError(
      'changeTheme() not implemented, implement this function before you call it.',
    );
  }

  bool getTheme() {
    throw UnimplementedError(
      'getTheme() not implemented, implement this function before you call it.',
    );
  }
}
