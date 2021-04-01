import 'package:get/get.dart';
import 'continents-details-controller.dart';

class ContinentsDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContinentsDetailsController());
  }
}
