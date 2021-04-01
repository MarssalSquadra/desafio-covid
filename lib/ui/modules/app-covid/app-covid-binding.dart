import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../../data/providers/providers.dart';

class AppCovidBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => Dio(
        BaseOptions(
            baseUrl: "https://disease.sh/v3/covid-19/",
            sendTimeout: 900,
            receiveTimeout: 900),
      ),
    );
    Get.lazyPut(
      () => ContinentProvider(Get.find()),
    );
  }
}
