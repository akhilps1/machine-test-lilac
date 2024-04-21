import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:machine_test/application/authantication/authentication_cubit.dart';
import 'package:machine_test/application/core/colors.dart';
import 'package:machine_test/presentation/core/widgets/custom_button.dart';
import 'package:machine_test/presentation/core/widgets/custom_circular_progress.dart';

class VerifyPhoneWidget extends StatelessWidget {
  const VerifyPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Mobile Number',
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: -0.32,
              ),
            )
          ],
        ),
        const Gap(10),
        Row(
          children: [
            Container(
              width: 54.33,
              height: 42,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: const Center(
                child: Text(
                  '+91',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Gap(1),
            Flexible(
              child: Container(
                height: 42,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.grey[200],
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                ),
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Number goes here',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding:
                          EdgeInsets.only(left: 10, right: 10, bottom: 8),
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                    onChanged: (value) => context
                        .read<AuthenticationCubit>()
                        .phoneNumberChanged(phoneNumber: value),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Gap(30),
        BlocConsumer<AuthenticationCubit, AuthenticationState>(
          listener: (context, state) {
            if (state.failureOption.isSome()) {
              context.read<AuthenticationCubit>().clearFailure();
            }
          },
          builder: (context, state) {
            return CustomButton(
              padding: const EdgeInsets.symmetric(vertical: 10),
              onPress: () {
                if (state.isInProgress) return;
                context.read<AuthenticationCubit>().veryfyPhoneNo();
              },
              color: AppColors.secondary,
              borderRadius: 24,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!state.isInProgress)
                    const Text(
                      'Send code',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  else
                    const CustomCircularProgress()
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
