import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:machine_test/application/authantication/authentication_cubit.dart';
import 'package:machine_test/application/core/colors.dart';
import 'package:machine_test/application/core/medias.dart';
import 'package:machine_test/presentation/authentication/widgets/otp_verification_widget.dart';
import 'package:machine_test/presentation/authentication/widgets/verify_phone_widget.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppMedias.login,
                  width: 200,
                ),
                const Gap(20),
                Text(
                  !context.watch<AuthenticationCubit>().state.displaySmsCodeForm
                      ? 'Login'
                      : 'Verify OTP',
                  style: const TextStyle(
                    color: AppColors.secondary,
                    fontSize: 32,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(20),
                if (!context
                    .watch<AuthenticationCubit>()
                    .state
                    .displaySmsCodeForm)
                  const VerifyPhoneWidget()
                else
                  const OtpVerificationWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
