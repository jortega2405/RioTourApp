import 'package:flutter/material.dart';

import 'categories.dart';
import 'form_banner.dart';
import 'home_header.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 10),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: 30),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
