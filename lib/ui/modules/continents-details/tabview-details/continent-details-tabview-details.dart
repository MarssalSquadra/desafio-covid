import 'package:flutter/material.dart';

import '../../../util/util.dart';
import '../continents-details-controller.dart';
import 'test-data.dart';
import 'today-data.dart';
import 'total-data.dart';

class ContinentDetailsTabViewDetails extends StatelessWidget {
  final ContinentsDetailsController _continentsDetailsController;

  const ContinentDetailsTabViewDetails(
    this._continentsDetailsController, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemes.color_0xFFF3F4F9,
      padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TotalData(
              continentsDetailsController: _continentsDetailsController,
            ),
            SizedBox(height: 21),
            TodayData(
              continentsDetailsController: _continentsDetailsController,
            ),
            SizedBox(height: 21),
            TestData(
              continentsDetailsController: _continentsDetailsController,
            ),
          ],
        ),
      ),
    );
  }
}
