import 'dart:convert';

class Continent {
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int tests;
  int population;
  String continent;
  ContinentInfo continentInfo;
  List<String> countries;
  int get activePercent => (active / cases * 100).round();
  int get recoveredPercent => (recovered / cases * 100).round();
  int get deathsPercent => (deaths / cases * 100).round();

  Continent(
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.todayRecovered,
      this.active,
      this.tests,
      this.population,
      this.continent,
      this.continentInfo,
      this.countries);

  Map<String, dynamic> toMap() {
    return {
      'cases': cases,
      'todayCases': todayCases,
      'deaths': deaths,
      'todayDeaths': todayDeaths,
      'recovered': recovered,
      'todayRecovered': todayRecovered,
      'active': active,
      'tests': tests,
      'population': population,
      'continent': continent,
      'continentInfo': continentInfo.toMap(),
      'countries': countries,
    };
  }

  factory Continent.fromMap(Map<String, dynamic> map) {
    return Continent(
      map['cases'],
      map['todayCases'],
      map['deaths'],
      map['todayDeaths'],
      map['recovered'],
      map['todayRecovered'],
      map['active'],
      map['tests'],
      map['population'],
      map['continent'],
      ContinentInfo.fromMap(map['continentInfo']),
      List<String>.from(map['countries']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Continent.fromJson(String source) =>
      Continent.fromMap(json.decode(source));
}

class ContinentInfo {
  double lat;
  double long;

  ContinentInfo(this.lat, this.long);

  Map<String, dynamic> toMap() {
    return {
      'lat': lat,
      'long': long,
    };
  }

  factory ContinentInfo.fromMap(Map<String, dynamic> map) {
    return ContinentInfo(
      map['lat'],
      map['long'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContinentInfo.fromJson(String source) =>
      ContinentInfo.fromMap(json.decode(source));
}
