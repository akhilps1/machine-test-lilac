import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Navigation {
  static Future<T?> navigateTo<T>(BuildContext context, Widget child) async {
    return Navigator.pushAndRemoveUntil(
        context,
        PageTransition(type: PageTransitionType.leftToRight, child: child),
        (route) => false);
  }

  static Future<T?> navigate<T>(BuildContext context, Widget child) async {
    return Navigator.push(
      context,
      PageTransition(type: PageTransitionType.leftToRight, child: child),
    );
  }
}
