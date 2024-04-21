import 'package:flutter/material.dart';
import 'package:machine_test/application/core/colors.dart';
import 'package:pinput/pinput.dart';

class AppTheam {
  static get defaultPinTheme => PinTheme(
        width: 56,
        height: 56,
        textStyle: const TextStyle(
            fontSize: 20, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.secondary,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      );

  static get focusedPinTheme => defaultPinTheme.copyDecorationWith(
        border: Border.all(
          color: AppColors.secondary,
        ),
        borderRadius: BorderRadius.circular(8),
      );

  static get submittedPinTheme => defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration.copyWith(),
      );
}
