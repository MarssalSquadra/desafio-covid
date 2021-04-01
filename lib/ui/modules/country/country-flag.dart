import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ui/util/util.dart';

import 'country-controller.dart';

class CountryFlag extends StatelessWidget {
  const CountryFlag({
    Key key,
    @required CountryController countryController,
  })  : _countryController = countryController,
        super(key: key);

  final CountryController _countryController;

  @override
  Widget build(BuildContext context) {
    return Obx(() => _countryController.loading.value
        ? Container()
        : Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: AppPatterns.defaulttBoxDecoration(hasBoxShadow: true),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppPatterns.radius),
                  child: Image.network(
                      _countryController?.coutry?.value?.countryInfo?.flag)),
            ),
          ));
  }
}
