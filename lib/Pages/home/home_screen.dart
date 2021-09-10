import 'package:app_travel/components/coustom_bottom_nav_bar.dart';
import 'package:app_travel/enums.dart';
import 'package:flutter/material.dart';


import 'components/body.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
