import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ui/modules/continents/continents-controller.dart';
import '../../components/components.dart';
import '../../util/util.dart';
import 'continent-card.dart';

class ContinentsPage extends StatelessWidget {
  final ContinentsController _continentsController;
  final size = MediaQuery.of(Get.context).size;
  final padding = MediaQuery.of(Get.context).padding;

  ContinentsPage(
    this._continentsController, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppThemes.white,
          elevation: .5,
          toolbarHeight: AppPatterns.toolbarHeight,
          automaticallyImplyLeading: false,
          title: CustomAppBarTitle(
            leftIconHasAction: false,
            title: "Covid-19",
            leftIcon: Container(
              width: 28,
              height: 28,
              child: Image.asset("assets/images/splash-image.png"),
            ),
          ),
        ),
        body: Obx(() => RefreshIndicator(
              displacement: 100,
              onRefresh: _continentsController.onRefresh,
              child: AnimatedCrossFade(
                crossFadeState: _continentsController.loading.value
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: Duration(milliseconds: 400),
                firstChild: _continentsController.continents.length == 0
                    ? DataNotFound()
                    : Container(
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                        color: AppThemes.color_0xFFF3F4F9,
                        width: size.width,
                        height: size.height -
                            AppPatterns.toolbarHeight -
                            padding.top,
                        child: Obx(
                          () => ListView.builder(
                            itemCount: _continentsController.continents.length,
                            itemBuilder: (context, index) {
                              var continent =
                                  _continentsController.continents[index];
                              return ContinentCard(
                                  continentsController: _continentsController,
                                  continent: continent);
                            },
                          ),
                        ),
                      ),
                secondChild: CustomLoading(
                  exibir: _continentsController.firtTime,
                ),
              ),
            )));
  }
}
