import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.serverFailure({required String errorMsg}) =
      ServerFailure;
  const factory MainFailure.dataNotFount({required String errorMsg}) =
      DataNotFount;

  const factory MainFailure.permissionDenied({required String errorMsg}) =
      _PermissionDenied;
  const factory MainFailure.tooManyRequests({required String errorMsg}) =
      _TooManyRequests;
  const factory MainFailure.invalidPhoneNumber({required String errorMsg}) =
      _InvalidPhoneNumber;

  const factory MainFailure.pickFailed({required String errorMsg}) =
      _PickFailed;

  const factory MainFailure.authenticationFailure({required String errorMsg}) =
      AuthenticationFailure;


}
