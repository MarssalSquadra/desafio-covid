import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import '../modules/modules.dart';

class AppRoutes {
  AppRoutes._();

  static const String SPLASH = "/Splah";
  static const String CONTINENTS = "/";
  static const String CONTINENTS_DETAILS = "/ContinentsDetails";
  static const String COUNTRY = "/Country";

  static List<GetPage> getRoutes() {
    return [
      GetPage(
        name: SPLASH,
        page: () => SplashPage(),
      ),
      GetPage(
        name: CONTINENTS,
        page: () => ContinentsPage(Get.find()),
        binding: ContinentsBinding(),
      ),
      GetPage(
        name: CONTINENTS_DETAILS,
        page: () => ContinentsDetailsPage(Get.find()),
        binding: ContinentsDetailsBinding(),
      ),
      GetPage(
        name: COUNTRY,
        page: () => CountryPage(Get.find()),
        binding: CountryBinding(),
      ),
    ];
  }
}
