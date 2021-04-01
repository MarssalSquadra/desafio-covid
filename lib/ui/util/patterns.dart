import 'package:flutter/material.dart';

import 'theme.dart';

class AppPatterns {
  AppPatterns._();

  static var toolbarHeight = 67.0;
  static const double radius = 6;
  static var toolbarPadding = EdgeInsets.fromLTRB(0, 0, 0, 0);
  static BoxDecoration defaulttBoxDecoration({
    Color color = AppThemes.white,
    hasBoxShadow = false,
  }) =>
      BoxDecoration(
        color: color,
        border: Border.all(
          color: AppThemes.transparent,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        boxShadow: hasBoxShadow
            ? [
                BoxShadow(
                  color: AppThemes.color_0xFFC7C7CC.withOpacity(.3),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: Offset(2, 2),
                ),
              ]
            : null,
      );
}
