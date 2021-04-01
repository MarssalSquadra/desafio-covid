import 'dart:ui';

import '../../../util/util.dart';
import 'package:flutter/material.dart';
import '../continents-details-controller.dart';

class InputSearch extends StatelessWidget {
  final ContinentsDetailsController _continentsDetailsController;

  const InputSearch(
    this._continentsDetailsController, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 5),
      height: 60,
      color: AppThemes.white,
      child: Center(
          child: TextField(
        onChanged: _continentsDetailsController.onTextChange,
        style: TextStyle(
          color: AppThemes.color_0xF11E2243,
          fontSize: 18,
        ),
      )),
    );
  }
}
