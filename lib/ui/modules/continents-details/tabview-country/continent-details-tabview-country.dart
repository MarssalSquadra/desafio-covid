import '../../../util/util.dart';
import 'package:flutter/material.dart';
import '../continents-details-controller.dart';
import 'country-list.dart';
import 'input-search.dart';

class ContinentDetailsTabViewCountry extends StatelessWidget {
  final ContinentsDetailsController _continentsDetailsController;

  const ContinentDetailsTabViewCountry(
    this._continentsDetailsController, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppThemes.color_0xFFF3F4F9,
        child: Column(
          children: [
            InputSearch(_continentsDetailsController),
            CountryList(_continentsDetailsController),
          ],
        ),
      ),
    );
  }
}
