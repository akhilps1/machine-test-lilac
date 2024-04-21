import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension BuildContextSettig on BuildContext {
  double get scrollDelta => MediaQuery.of(this).size.height * 0.16;
}

extension StringCapitalization on String {
  String get capitalize {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }

  String get getLastTwoCharacters => substring(length - 2);
}

extension DateTimeExtension on DateTime {
  String get dateIdToday => DateFormat('ddMMyyyy').format(DateTime.now());
}

extension ScrollControllerExtension on ScrollController {
  bool isAtEdge(BuildContext context) {
    return position.atEdge &&
        position.pixels != 0 &&
        position.pixels >= context.scrollDelta;
  }
}
