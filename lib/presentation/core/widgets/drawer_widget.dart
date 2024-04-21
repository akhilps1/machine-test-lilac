import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:machine_test/application/authantication/authentication_cubit.dart';
import 'package:machine_test/application/core/colors.dart';
import 'package:machine_test/application/core/serveice/navigation.dart';
import 'package:machine_test/application/core/serveice/progress_dialog.dart';
import 'package:machine_test/application/profile/profile_bloc.dart';
import 'package:machine_test/presentation/authentication/authentication_screen.dart';
import 'package:machine_test/presentation/core/widgets/custom_button.dart';
import 'package:machine_test/presentation/splash/splash_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        state.logoutOption.fold(() {}, (failureOrSuccess) {
          failureOrSuccess.fold(
            (l) {
              Navigator.pop(context);
              context.read<AuthenticationCubit>().clearFailure();

              log('UserAccountScreen logout failure');
            },
            (r) {
              log('UserAccountScreen logout success');
              Navigator.pop(context);
              context.read<AuthenticationCubit>().clearSuccess();

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const SplashScreen(),
                ),
              );
            },
          );
        });
      },
      builder: (context, state) {
        return Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              Container(
                color: AppColors.secondary.withOpacity(0.4),
                height: 260,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (state.userDetails != null)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: state.userDetails!.imageUrl != null
                                  ? Image.network(state.userDetails!.imageUrl!)
                                  : const Icon(
                                      Icons.person,
                                      size: 45,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                        ],
                      ),
                    if (state.userDetails != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          state.userDetails?.name ??
                              state.userDetails?.phoneNumber ??
                              'Hi User',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    else
                      SizedBox(
                        width: 150,
                        child: CustomButton(
                          onPress: () {
                            Navigator.pop(context);
                            Navigation.navigate(
                                context, const AuthenticationScreen());
                          },
                          color: AppColors.secondary,
                          widget: const Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                  ],
                ),
              ),
              Column(
                children: [
                  const Gap(15),
                  SizedBox(
                    height: 50,
                    child: BlocSelector<ProfileBloc, ProfileState, bool>(
                      selector: (state) {
                        return state.isDark;
                      },
                      builder: (context, isDark) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Drak Mode',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500),
                              ),
                              Switch.adaptive(
                                value: isDark,
                                onChanged: (value) {
                                  context.read<ProfileBloc>().add(
                                        const ChangeTheme(),
                                      );
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(),
                  Gap(MediaQuery.of(context).size.height * 0.5),
                  const Divider(),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      showProgress(context);
                      context.read<AuthenticationCubit>().logout();
                    },
                    icon: const Icon(Icons.logout),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
