import '../../../ui/util/util.dart';

import '../../../models/models.dart';
import '../../components/components.dart';
import 'package:flutter/material.dart';

import 'tabview-country/continent-details-tabview-country.dart';
import 'tabview-details/continent-details-tabview-details.dart';
import 'continents-details-controller.dart';

class ContinentsDetailsPage extends StatelessWidget {
  final ContinentsDetailsController _continentsDetailsController;
  ContinentsDetailsPage(this._continentsDetailsController);

  @override
  Widget build(BuildContext context) {
    _continentsDetailsController.continent =
        ModalRoute.of(context).settings.arguments as Continent;

    var tabBarheight = 40.0;

    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppThemes.white,
            elevation: .5,
            toolbarHeight: AppPatterns.toolbarHeight + tabBarheight,
            automaticallyImplyLeading: false,
            title: CustomAppBarTitle(
                alignment: Alignment.centerLeft,
                title: _continentsDetailsController.continent.continent),
            bottom: TabBar(
              indicatorColor: AppThemes.primaryColor,
              unselectedLabelColor: AppThemes.color_0xFF969AA8,
              indicatorWeight: 4,
              labelColor: AppThemes.primaryColor,
              labelStyle: TextStyle(
                fontSize: 17,
              ),
              tabs: <Widget>[
                Container(
                  height: tabBarheight,
                  child: Center(
                    child: Text(
                      "Detalhes",
                    ),
                  ),
                ),
                Container(
                  height: tabBarheight,
                  child: Center(
                    child: Text(
                      "Países",
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ContinentDetailsTabViewDetails(_continentsDetailsController),
              ContinentDetailsTabViewCountry(_continentsDetailsController),
            ],
          ),
        ));
  }
}
