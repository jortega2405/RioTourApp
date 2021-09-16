import 'package:app_travel/Pages/form/form_page.dart';
import 'package:flutter/material.dart';


class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, FormPage.routeName);
        },
          child: Text.rich(
          TextSpan(
            style: TextStyle(color: Colors.white),
            children: [
               TextSpan(
                text: "Planea tu viaje\n",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: "Diligencia el formulario para saber mas de ti"),
            ],
          ),
        ),
      ),
    );
  }
}
