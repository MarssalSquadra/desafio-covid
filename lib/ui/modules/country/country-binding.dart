import 'package:get/get.dart';
import '../../../data/providers/providers.dart';
import 'country-controller.dart';

class CountryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CountryProvider(Get.find()),
    );
    Get.lazyPut(
      () => CountryController(Get.find()),
    );
  }
}
