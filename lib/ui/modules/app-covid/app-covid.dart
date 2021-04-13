import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/util.dart';
import 'app-covid-binding.dart';

class AppCovid extends StatefulWidget {
  @override
  _AppCovidState createState() => _AppCovidState();
}

class _AppCovidState extends State<AppCovid> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      initialBinding: AppCovidBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Desafio Covid',
      initialRoute: AppRoutes.SPLASH,
      theme: ThemeData(
        primarySwatch: AppThemes.primaryColor,
        accentColor: AppThemes.accentColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Ubuntu',
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryTextTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      getPages: AppRoutes.getRoutes(),
    );
  }
}
