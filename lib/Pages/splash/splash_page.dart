import 'package:app_travel/Pages/splash/components/body.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Scaffold(
      body: Body(),
    );
  }
}