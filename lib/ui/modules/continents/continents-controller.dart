import 'package:get/get.dart';

import '../../../models/models.dart';
import '../../../data/providers/providers.dart';
import '../../util/util.dart';

class ContinentsController extends GetxController {
  List<Continent> _continents = <Continent>[].obs;
  var loading = true.obs;
  var firstTime = true;

  ContinentsController(this._continentProvider);
  List<Continent> get continents => [..._continents];
  final ContinentProvider _continentProvider;

  @override
  void onInit() {
    _getContinents();
    super.onInit();
  }

  Future<void> _getContinents() async {
    var retorno = await _continentProvider.getContinents();
    _continents.clear();
    _continents.addAll(retorno);
    loading.value = false;
    firstTime = false;
    update();
  }

  String getAsset(Continent continent) {
    var rawName = continent.continent
        .toLowerCase()
        .trim()
        .replaceAll(" ", "-")
        .replaceAll("/", "-");
    return "assets/images/$rawName-icon.png";
  }

  void onTapCard(Continent continent) =>
      Get.toNamed(AppRoutes.CONTINENTS_DETAILS, arguments: continent);

  Future<void> onRefresh() async {
    loading.value = true;
    update();
    await _getContinents();
  }
}
