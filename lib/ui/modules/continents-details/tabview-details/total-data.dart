import 'package:flutter/material.dart';

import '../../../../ui/components/components.dart';
import '../../../util/util.dart';
import '../continents-details-controller.dart';

class TotalData extends StatelessWidget {
  const TotalData({
    Key key,
    @required ContinentsDetailsController continentsDetailsController,
  })  : _continentsDetailsController = continentsDetailsController,
        super(key: key);

  final ContinentsDetailsController _continentsDetailsController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      decoration: AppPatterns.defaulttBoxDecoration(hasBoxShadow: true),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: DefaultText(
              "Total",
              color: AppThemes.color_0xF11E2243,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 32, 0, 0),
            child: DefaultText(
              "Total de casos",
              color: AppThemes.color_0xFF969AA8,
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: DefaultText(
              _continentsDetailsController.continent.cases.toString(),
              color: AppThemes.color_0xF11E2243,
              fontSize: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 37, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      child: DefaultText(
                        "Ativos",
                        color: AppThemes.color_0xFF969AA8,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: DefaultText(
                        "${_continentsDetailsController.continent.activePercent.toString()}%",
                        color: AppThemes.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: DefaultText(
                        "Curados",
                        color: AppThemes.color_0xFF969AA8,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: DefaultText(
                        "${_continentsDetailsController.continent.recoveredPercent.toString()}%",
                        color: AppThemes.color_0xFF5FD92B,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: DefaultText(
                        "Óbitos",
                        color: AppThemes.color_0xFF969AA8,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: DefaultText(
                        "${_continentsDetailsController.continent.deathsPercent.toString()}%",
                        color: AppThemes.accentColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
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
