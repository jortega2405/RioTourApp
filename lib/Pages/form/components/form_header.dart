import 'package:app_travel/Pages/home/components/icon_btn_with_counter.dart';
import 'package:app_travel/Pages/home/home_screen.dart';
import 'package:flutter/material.dart';


class FormHeader extends StatelessWidget {
  const FormHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBtnWithCounter(
            svgSrc: "assets/icons/left-arrow.svg",
            press: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right:120),
            child: Text(
              'Mi Viaje',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
