// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:machine_test/application/core/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.border,
    this.iconData,
    this.enabled = true,
    this.readOnly = false,
    required this.hint,
    this.suffixIcon,
    this.onChange,
    this.obscureText = false,
    this.controller,
    this.validater,
    this.inputType,
    this.fomeKey,
    this.inputFormatters,
    this.initialValue,
    this.onTap,
    this.maxLength,
    this.maxLines,
  }) : super(key: key);

  final GlobalKey<FormState>? fomeKey;
  final Widget? iconData;
  final String hint;
  final TextInputType? inputType;
  final bool enabled;
  final void Function(String)? onChange;
  final String? Function(String?)? validater;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? maxLines;

  final bool readOnly;

  final InputBorder? border;
  final String? initialValue;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      enabled: enabled,
      maxLength: maxLength,
      maxLines: maxLines,
      initialValue: initialValue,
      controller: controller,
      obscureText: obscureText,
      keyboardType: inputType ?? TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: inputFormatters,
      onChanged: onChange,
      validator: validater,
      readOnly: readOnly,
      style: const TextStyle(
        color: Color(0xFFFCF8E7),
        fontSize: 15.5,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        prefixIcon: iconData,
        suffixIcon: suffixIcon,
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color(0xFFFCF8E7),
          fontSize: 15.5,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        border: border ??
            OutlineInputBorder(
              gapPadding: 0,
              borderSide: const BorderSide(color: AppColors.primary),
              borderRadius: BorderRadius.circular(12),
            ),
        disabledBorder: border ??
            OutlineInputBorder(
              gapPadding: 0,
              borderSide: const BorderSide(color: AppColors.primary),
              borderRadius: BorderRadius.circular(12),
            ),
        enabledBorder: border ??
            OutlineInputBorder(
              gapPadding: 0,
              borderSide: const BorderSide(color: AppColors.primary),
              borderRadius: BorderRadius.circular(12),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          gapPadding: 0,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
