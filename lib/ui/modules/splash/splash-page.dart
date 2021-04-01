import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../../util/util.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1))
        .then((value) => Get.offAllNamed(AppRoutes.CONTINENTS));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: size.width,
      height: size.height,
      child: Center(
        child: Container(
          height: 200,
          child: Image.asset("assets/images/splash-image.png"),
        ),
      ),
    );
  }
}
