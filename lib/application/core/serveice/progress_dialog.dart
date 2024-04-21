import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:machine_test/application/core/colors.dart';
import 'package:machine_test/presentation/core/widgets/custom_circular_progress.dart';

void showProgress<T>(BuildContext context) {
  showDialog<T>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return PopScope(
        canPop: false,
        child: Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 80),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Row(
                children: [
                  CustomCircularProgress(
                    color: AppColors.primary,
                    size: 30,
                  ),
                  Gap(15),
                  Text(
                    'Please wait...',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

abstract class StateWithProgress {
  double get progressValue;

  double get completedProgress;
}
