import 'package:desafio_covid/models/country.dart';

import '../../../data/providers/providers.dart';
import 'package:get/get.dart';

class CountryController extends GetxController {
  final CountryProvider _countryProvider;

  CountryController(this._countryProvider);
  final coutry = Country().obs;
  final loading = true.obs;
  final hasData = false.obs;

  @override
  void onInit() {
    loading.value = true;
    update();
    super.onInit();
  }

  Future<void> getCountry(String country) async {
    loading.value = true;
    update();
    var retorno = await _countryProvider.getCountry(country);
    if (retorno != null) {
      coutry.update((val) {
        val.countryInfo = retorno.countryInfo;
        val.active = retorno.active;
        val.recovered = retorno.recovered;
        val.deaths = retorno.deaths;
        val.country = retorno.country;
        val.cases = retorno.cases;
      });
      hasData.value = true;
    } else {
      hasData.value = false;
    }

    loading.value = false;
    update();
  }
}
