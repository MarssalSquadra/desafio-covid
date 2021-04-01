import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ui/util/util.dart';
import '../../components/components.dart';
import 'country-controller.dart';
import 'country-data.dart';
import 'country-flag.dart';

class CountryPage extends StatelessWidget {
  final CountryController _countryController;

  const CountryPage(
    this._countryController, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = ModalRoute.of(context).settings.arguments as String;
    _countryController.getCountry(title);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppThemes.white,
        elevation: .5,
        toolbarHeight: AppPatterns.toolbarHeight,
        automaticallyImplyLeading: false,
        title: CustomAppBarTitle(
          alignment: Alignment.centerLeft,
          title: title,
        ),
      ),
      body: Obx(
        () => _countryController.loading.value
            ? CustomLoading()
            : !_countryController.hasData.value
                ? DataNotFound()
                : Container(
                    color: AppThemes.color_0xFFF3F4F9,
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                    child: Stack(
                      children: [
                        CountryData(countryController: _countryController),
                        CountryFlag(countryController: _countryController),
                      ],
                    ),
                  ),
      ),
    );
  }
}
