import 'dart:developer';
import 'package:dio/dio.dart';

import '../../models/models.dart';

class CountryProvider {
  final Dio _dio;

  CountryProvider(this._dio);

  Future<Country> getCountry(String country) async {
    try {
      var response = await _dio.get(
        "countries/$country",
        queryParameters: {
          "strict": true,
        },
      );
      return Country.fromMap(response.data);
    } on DioError catch (e) {
      log(e.message);
      return null;
    }
  }
}
