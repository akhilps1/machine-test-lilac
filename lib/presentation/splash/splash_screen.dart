import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/application/authantication/authentication_cubit.dart';
import 'package:machine_test/application/core/colors.dart';
import 'package:machine_test/application/core/serveice/navigation.dart';
import 'package:machine_test/presentation/core/app_root.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1500), () {
      context.read<AuthenticationCubit>().checkAuthStatus();
      // Navigation.navigateTo(context, const AuthenticationScreen());
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listenWhen: (previous, current) {
        return current.loginFailureOrSuccess.isSome() ||
            current.failureOption.isSome();
      },
      listener: (context, state) {
        log('splash called');
        if (state.failureOption.isSome()) {
          context.read<AuthenticationCubit>().clearFailure();

          Navigation.navigateTo(context, const AppRoot());
        }

        state.loginFailureOrSuccess.fold(() => null, (failureOrSuccess) {
          failureOrSuccess.fold(
            (l) {
              Navigation.navigateTo(context, const AppRoot());

              context.read<AuthenticationCubit>().clearFailure();
            },
            (r) {
              Navigation.navigateTo(context, const AppRoot());

              context.read<AuthenticationCubit>().clearSuccess();
            },
          );
        });
      },
      child: const Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Video Player',
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: -0.32,
              ),
            )
          ],
        ),
      )),
    );
  }
}
