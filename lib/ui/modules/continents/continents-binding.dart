import 'package:get/get.dart';

import 'continents-controller.dart';

class ContinentsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContinentsController(Get.find()));
  }
}
