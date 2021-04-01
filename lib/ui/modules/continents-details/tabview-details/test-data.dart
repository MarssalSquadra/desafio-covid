import 'package:flutter/material.dart';

import '../../../../ui/components/components.dart';
import '../../../util/util.dart';
import '../continents-details-controller.dart';

class TestData extends StatelessWidget {
  const TestData({
    Key key,
    @required ContinentsDetailsController continentsDetailsController,
  })  : _continentsDetailsController = continentsDetailsController,
        super(key: key);

  final ContinentsDetailsController _continentsDetailsController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 156,
      decoration: AppPatterns.defaulttBoxDecoration(hasBoxShadow: true),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 21, 0, 0),
            child: DefaultText(
              "Testes",
              color: AppThemes.color_0xF11E2243,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 32, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      child: DefaultText(
                        "Realizados",
                        color: AppThemes.color_0xFF969AA8,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: DefaultText(
                        "${_continentsDetailsController.continent.tests.toString()}",
                        color: AppThemes.color_0xF11E2243,
                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: DefaultText(
                        "População",
                        color: AppThemes.color_0xFF969AA8,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: DefaultText(
                        "${_continentsDetailsController.continent.population.toString()}",
                        color: AppThemes.color_0xF11E2243,
                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
