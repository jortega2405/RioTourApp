import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Motivations extends StatelessWidget {
  const Motivations({Key key,  @required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> motivations = [
      {"icon": "assets/icons/triste.svg", "text": "Bajas"},
      {"icon": "assets/icons/neutral.svg", "text": "Neutral"},
      {"icon": "assets/icons/happy.svg", "text": "Altas"},
    ];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
         Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: List.generate(
            motivations.length,
            (index) => MotivationCards(
              icon: motivations[index]["icon"],
              text: motivations[index]["text"],
              press: () {},
            ),
          ),
        )
        ]
      ),
    );
  }
}


class MotivationCards extends StatelessWidget {
  const MotivationCards({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

 @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 50,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Color(0xFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon),
            ),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12
              ),
            )
          ],
        ),
      ),
    );
  }
}