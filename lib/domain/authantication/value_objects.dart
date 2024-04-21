// import 'package:dartz/dartz.dart';
// import 'package:kenza_user/domain/core/failures/failures.dart';
// import 'package:kenza_user/domain/core/failures/value_object.dart';

// class PhoneNumber extends ValueObjet<String> {
//   @override
//   final Either<MainFailure, String> value;

//   const PhoneNumber._({
//     required this.value,
//   });

//   factory PhoneNumber(String value) {
//     return PhoneNumber._(value: validatePhoneNumber(value));
//   }
// }

// Either<MainFailure, String> validatePhoneNumber(String value) {
//   if (value.length == 10) {
//     return Right(value);
//   } else {
//     return const Left(
//       MainFailure.invalidPhoneNumber(errorMsg: 'Invalid Phone Number'),
//     );
//   }
// }
