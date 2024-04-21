// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomCircularProgress extends StatelessWidget {
  const CustomCircularProgress({
    Key? key,
    this.color,
    this.size,
  }) : super(key: key);
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 25,
      width: size ?? 25,
      child: CircularProgressIndicator(
        strokeWidth: 2.5,
        color: color ?? Colors.white,
      ),
    );
  }
}
