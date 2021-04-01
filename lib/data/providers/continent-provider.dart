import 'dart:developer';

import 'package:dio/dio.dart';
import '../../models/models.dart';

class ContinentProvider {
  final Dio _dio;

  ContinentProvider(this._dio);

  Future<List<Continent>> getContinents() async {
    try {
      var response = await _dio.get(
        "continents",
        queryParameters: {
          "yesterday": true,
        },
      );
      return response?.data
          ?.map<Continent>((u) => Continent.fromMap(u))
          ?.toList();
    } on DioError catch (e) {
      log(e.message);
      return <Continent>[];
    }
  }
}
