import 'dart:ui';
import 'package:get/get.dart';

import '../../../util/util.dart';
import 'package:flutter/material.dart';
import '../continents-details-controller.dart';

class CountryList extends StatelessWidget {
  final ContinentsDetailsController _continentsDetailsController;

  const CountryList(
    this._continentsDetailsController, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    return Obx(
      () => Container(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
        width: double.infinity,
        height: device.size.height -
            device.padding.top -
            AppPatterns.toolbarHeight -
            122,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: _continentsDetailsController.countries.length,
          itemBuilder: (context, index) {
            var country = _continentsDetailsController.countries[index];
            return InkWell(
                onTap: () =>
                    _continentsDetailsController.onTapCardCountry(country),
                child: Container(
                  margin: EdgeInsets.only(bottom: 4),
                  child: Card(
                    child: ListTile(
                      title: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          country,
                          style: TextStyle(
                            color: AppThemes.color_0xF11E2243,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      trailing: InkWell(
                        onTap: () => _continentsDetailsController
                            .onTapCardCountry(country),
                        borderRadius: BorderRadius.circular(35),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppThemes.color_0xFFC7C7CC,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
