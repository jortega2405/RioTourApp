import 'package:app_travel/Pages/splash/splash_page.dart';
import 'package:app_travel/routes.dart';
import 'package:app_travel/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rio Tour',
      theme: theme(),
      initialRoute: SplashPage.routeName,
      routes: routes,
    );
  }
}
