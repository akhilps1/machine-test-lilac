// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/application/core/app_theme.dart';
import 'package:machine_test/application/profile/profile_bloc.dart';
import 'package:pinput/pinput.dart';

class OtpWidget extends StatelessWidget {
  const OtpWidget({
    Key? key,
    required this.onCompleted,
  }) : super(key: key);

  final Function(String) onCompleted;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, bool>(
      selector: (state) {
        return state.isDark;
      },
      builder: (context, state) {
        return Pinput(
          length: 6,
          focusNode: FocusNode(),
          defaultPinTheme: AppTheam.defaultPinTheme,
          focusedPinTheme: AppTheam.focusedPinTheme,
          submittedPinTheme: AppTheam.submittedPinTheme,

          // validator: (s) {
          //   return s == '2222' ? null : 'Pin is incorrect';
          // },
          pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
          androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
          autofocus: true,
          onCompleted: onCompleted,
        );
      },
    );
  }
}
