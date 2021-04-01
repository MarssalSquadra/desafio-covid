import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ui/util/util.dart';
import '../../components/components.dart';
import 'country-controller.dart';

class CountryData extends StatelessWidget {
  const CountryData({
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
              width: double.infinity,
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.only(top: 130),
              decoration: AppPatterns.defaulttBoxDecoration(),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: DefaultText(
                      _countryController.coutry.value.country,
                      color: AppThemes.color_0xF11E2243,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
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
                      _countryController.coutry.value.cases.toString(),
                      color: AppThemes.color_0xF11E2243,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
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
                                  "${_countryController.coutry.value.activePercent.toString()}%",
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
                                  "${_countryController.coutry.value.recoveredPercent.toString()}%",
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
                                  "${_countryController.coutry.value.deathsPercent.toString()}%",
                                  color: AppThemes.accentColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ));
  }
}
