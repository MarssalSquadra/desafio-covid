import 'dart:convert';

class Country {
  String country;
  int cases;
  int deaths;
  int recovered;
  int active;
  CountryInfo countryInfo;

  int get activePercent => (active / cases * 100).round();
  int get recoveredPercent => (recovered / cases * 100).round();
  int get deathsPercent => (deaths / cases * 100).round();

  Country({
    this.country,
    this.cases,
    this.deaths,
    this.recovered,
    this.active,
    this.countryInfo,
  });

  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'cases': cases,
      'deaths': deaths,
      'recovered': recovered,
      'active': active,
    };
  }

  factory Country.fromMap(Map<String, dynamic> map) {
    return Country(
      country: map['country'],
      cases: map['cases'],
      deaths: map['deaths'],
      recovered: map['recovered'],
      active: map['active'],
      countryInfo: CountryInfo.fromMap(map['countryInfo']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Country.fromJson(String source) =>
      Country.fromMap(json.decode(source));
}

class CountryInfo {
  String flag;

  CountryInfo({
    this.flag,
  });

  Map<String, dynamic> toMap() {
    return {
      'flag': flag,
    };
  }

  factory CountryInfo.fromMap(Map<String, dynamic> map) {
    return CountryInfo(
      flag: map['flag'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryInfo.fromJson(String source) =>
      CountryInfo.fromMap(json.decode(source));
}
