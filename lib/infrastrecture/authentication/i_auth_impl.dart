import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:machine_test/application/core/serveice/debug_logger.dart';
import 'package:machine_test/application/core/utils/typedefs/typedefs.dart';
import 'package:machine_test/domain/authantication/i_auth_facade.dart';
import 'package:machine_test/domain/authantication/models/user_details.dart';
import 'package:machine_test/domain/core/failures/exceptions/custom_exception.dart';
import 'package:machine_test/domain/core/failures/failures.dart';

import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthFacade)
class IAuthImpl implements IAuthFacade {
  IAuthImpl({
    required FirebaseFirestore firebaseFirestore,
    required SharedPreferences sharedPreferences,
    required FirebaseAuth firebaseAuth,
  })  : _firebaseFirestore = firebaseFirestore,
        _preferences = sharedPreferences,
        _firebaseAuth = firebaseAuth;

  final SharedPreferences _preferences;
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;

  final DebugLogger logger = DebugLogger();

  int? resendToken;

  @override
  ResultFuture<Unit> deleteAccount(String uid) async {
    try {
      await _firebaseFirestore.collection('users').doc(uid).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      log('deleteAccount Exception $e');
      return left(
        MainFailure.serverFailure(
          errorMsg: e.code,
        ),
      );
    }
  }

  @override
  StreamResult<UserDetails> getUserDetails({
    required String uid,
  }) async* {
    final StreamController<Either<MainFailure, UserDetails>> streamController =
        StreamController<Either<MainFailure, UserDetails>>();

    _firebaseFirestore.collection('users').doc(uid).snapshots().listen((event) {
      if (event.data() != null) {
        streamController.add(
          Right(
            UserDetails.fromMap(event.data()!).copyWith(id: event.id),
          ),
        );
      } else {
        return streamController.add(
          left(
            const MainFailure.dataNotFount(errorMsg: 'User Not Fount'),
          ),
        );
      }
    });
    yield* streamController.stream;
  }

  @override
  ResultFuture<Unit> logout() async {
    try {
      await _firebaseAuth.signOut();
      await _preferences.remove('userId');
      await _preferences.remove('isDark');
      return right(unit);
    } on FirebaseException catch (e) {
      logger.log('logout Exception $e');
      return left(
        MainFailure.serverFailure(
          errorMsg: e.code,
        ),
      );
    }
  }

  @override
  StreamResult<String> veryfyPhoneNo({
    required String phoneNo,
  }) async* {
    final StreamController<Either<MainFailure, String>> streamController =
        StreamController<Either<MainFailure, String>>();

    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: '+91$phoneNo',
      verificationCompleted: (_) {},
      verificationFailed: (FirebaseAuthException e) {
        streamController.add(
          left(
            MainFailure.serverFailure(errorMsg: e.code),
          ),
        );
      },
      codeSent: (String verificationId, int? token) {
        resendToken = token;
        streamController.add(
          Right(verificationId),
        );
      },
      codeAutoRetrievalTimeout: (_) {},
    );

    yield* streamController.stream;
  }

  Future<void> saveUser({
    required String phoneNo,
    required String uid,
    required UserDetails userDetails,
  }) async {
    try {
      final response =
          await _firebaseFirestore.collection('users').doc(uid).get();
      if (response.data() != null) {
        await _preferences.setString('userId', response.id);
      } else {
        await _firebaseFirestore.collection('users').doc(uid).set(
              userDetails
                  .copyWith(
                    phoneNumber: phoneNo,
                  )
                  .toMap(),
            );
        // await _preferences.setString('userId', uid);
      }
    } on FirebaseException catch (e) {
      logger.log('saveUser Exception $e');
      throw CustomException(500, e.code);
    }
  }

  @override
  Future<Either<MainFailure, Unit>> verifyOtp({
    required String smsCode,
    required String verificationId,
    required UserDetails userDetails,
  }) async {
    try {
      final PhoneAuthCredential phoneAuthCredential =
          PhoneAuthProvider.credential(
              smsCode: smsCode, verificationId: verificationId);

      final credential =
          await _firebaseAuth.signInWithCredential(phoneAuthCredential);

      if (credential.user == null || credential.user!.phoneNumber == null) {
        return left(
          const MainFailure.authenticationFailure(
              errorMsg: 'Faild to authenticate'),
        );
      }

      await saveUser(
        phoneNo: credential.user!.phoneNumber!,
        uid: credential.user!.uid,
        userDetails: userDetails,
      );

      return right(unit);
    } on CustomException catch (e) {
      logger.log('verifyOtp Exception $e');
      return left(
        MainFailure.serverFailure(errorMsg: e.errorMsg),
      );
    } on FirebaseAuthException catch (e) {
      logger.log(e.message.toString());
      return left(
        MainFailure.serverFailure(errorMsg: e.code),
      );
    }
  }

  @override
  void clesrToken() {
    resendToken = null;
  }

  @override
  UseResult<String> checkAuthStatus() {
    if (_firebaseAuth.currentUser != null) {
      return right(_firebaseAuth.currentUser!.uid);
    }
    return left(
        const MainFailure.authenticationFailure(errorMsg: 'User Not Found'));
  }
}
