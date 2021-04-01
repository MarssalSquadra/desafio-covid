import 'package:flutter/material.dart';
import '../util/util.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final int maxLines;
  final Color color;
  final TextAlign textAlign;
  final double letterSpacing;

  const DefaultText(
    this.text, {
    Key key,
    this.textAlign,
    this.fontWeight,
    this.fontSize,
    this.maxLines,
    this.color,
    this.letterSpacing,
  }) : super(key: key);

  const DefaultText.white(
    String text, {
    Key key,
    TextAlign textAlign,
    FontWeight fontWeight,
    double fontSize,
    double letterSpacing,
    int maxLines,
    double opacity,
  }) : this(
          text,
          key: key,
          fontWeight: fontWeight,
          fontSize: fontSize,
          letterSpacing: letterSpacing,
          maxLines: maxLines,
          color: AppThemes.white,
        );

  @override
  Widget build(BuildContext context) {
    String localText = text ?? "text";
    FontWeight fontWeightLocal = fontWeight ?? FontWeight.normal;
    double localFontSize = fontSize ?? 16;
    int localMaxLines = maxLines ?? 1;
    Color localColor = color ?? AppThemes.primaryColor;

    TextAlign localTextAlign = textAlign ?? TextAlign.center;
    double localLetterSpacing = letterSpacing ?? 0;

    return Text(
      localText,
      maxLines: localMaxLines,
      textAlign: localTextAlign,
      style: TextStyle(
          letterSpacing: localLetterSpacing,
          fontSize: localFontSize,
          fontWeight: fontWeightLocal,
          color: localColor),
    );
  }
}
