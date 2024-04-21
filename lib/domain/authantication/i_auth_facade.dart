import 'package:dartz/dartz.dart';
import 'package:machine_test/application/core/utils/typedefs/typedefs.dart';
import 'package:machine_test/domain/authantication/models/user_details.dart';

abstract class IAuthFacade {
  StreamResult<UserDetails> getUserDetails({
    required String uid,
  });

  StreamResult<String> veryfyPhoneNo({required String phoneNo});
  ResultFuture<Unit> verifyOtp({
    required String smsCode,
    required String verificationId,
    required UserDetails userDetails,
  });
  ResultFuture<Unit> logout();
  ResultFuture<Unit> deleteAccount(String uid);

  UseResult<String> checkAuthStatus();

  void clesrToken();
}
