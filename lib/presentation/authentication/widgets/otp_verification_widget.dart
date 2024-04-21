import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:machine_test/application/authantication/auth_ui/auth_ui_bloc.dart';
import 'package:machine_test/application/authantication/authentication_cubit.dart';
import 'package:machine_test/application/core/colors.dart';
import 'package:machine_test/application/core/serveice/navigation.dart';
import 'package:machine_test/application/core/serveice/progress_dialog.dart';
import 'package:machine_test/application/core/utils/extentions/extentions.dart';
import 'package:machine_test/presentation/authentication/widgets/otp_widget.dart';
import 'package:machine_test/presentation/core/widgets/custom_button.dart';
import 'package:machine_test/presentation/splash/splash_screen.dart';

import 'package:timer_count_down/timer_count_down.dart';

class OtpVerificationWidget extends StatelessWidget {
  const OtpVerificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state.otpVerifyFailOption.isSome()) {
          context.read<AuthenticationCubit>().clearFailure();
          Navigator.pop(context);
        }

        if (state.otpVerifySuccessOption.isSome()) {
          context.read<AuthenticationCubit>().clearSuccess();
          Navigator.pop(context);
          Navigation.navigateTo(context, const SplashScreen());
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            const Row(
              children: [
                Text(
                  'OTP Verification',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const Gap(5),
            Row(
              children: [
                SizedBox(
                  width: 305,
                  child: Text(
                    'Enter the verification code we just sent to your number +91 ********${state.phoneNumber.getLastTwoCharacters}.',
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            const Gap(20),
            OtpWidget(
              onCompleted: (otp) {
                context
                    .read<AuthenticationCubit>()
                    .smsCodeChanged(smsCode: otp);
              },
            ),
            const Gap(20),
            CustomButton(
              padding: const EdgeInsets.symmetric(vertical: 10),
              onPress: () {
                if (state.isInProgress) return;
                showProgress(context);
                context.read<AuthenticationCubit>().verifyOtp();
              },
              color: AppColors.secondary,
              borderRadius: 24,
              widget: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Verify OTP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            const Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't receive OTP?",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Axiforma',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(5),
                if (!context.watch<AuthUiBloc>().state.showResendButton)
                  Countdown(
                    seconds: 60,
                    build: (BuildContext context, double time) => Text(
                      '${time.toInt()}s',
                      style: const TextStyle(
                        color: AppColors.secondary,
                      ),
                    ),
                    interval: const Duration(seconds: 1),
                    onFinished: () {
                      context
                          .read<AuthUiBloc>()
                          .add(const ShowResendBurron(true));
                    },
                  )
                else
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {
                      context
                          .read<AuthUiBloc>()
                          .add(const ShowResendBurron(false));
                      context.read<AuthenticationCubit>().verifyOtp();
                    },
                    child: const Text(
                      'Resend',
                      style: TextStyle(
                        color: AppColors.secondary,
                        fontSize: 12,
                        fontFamily: 'Axiforma',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
              ],
            ),
          ],
        );
      },
    );
  }
}
