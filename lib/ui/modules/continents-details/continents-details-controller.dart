import 'package:get/get.dart';

import '../../util/util.dart';
import '../../../models/models.dart';

class ContinentsDetailsController extends GetxController {
  Continent continent;
  List<String> _countries = <String>[].obs;
  final _filtro = "".obs;
  List<String> get countries {
    _countries = continent.countries;
    return [
      ..._countries.where(
        (e) => e.toLowerCase().contains(_filtro.trim().toLowerCase()),
      )
    ];
  }

  onTapCardCountry(String country) {
    Get.toNamed(AppRoutes.COUNTRY, arguments: country);
  }

  void onTextChange(String value) {
    _filtro.value = value;
    update();
  }
}
