

import 'package:app_travel/Pages/form/components/transportation.dart';
import 'package:app_travel/Pages/form/components/travel_with.dart';
import 'package:app_travel/Pages/home/home_screen.dart';
import 'package:app_travel/components/default_button.dart';
import 'package:flutter/material.dart';

import 'form_header.dart';
import 'form_text_field.dart';
import 'motivations.dart';

class BodyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 10),
          FormHeader(),
          SizedBox(height: 10),
          TextFieldForm(),
          Text("Con Quien Viajas?", style: TextStyle(fontSize: 16),),
          TravelWith(),
          Text("Como Llegaras?", style: TextStyle(fontSize: 16),),
          Transportation(),
          Text("Cuales son tus principales motivaciones?", style: TextStyle(fontSize: 16),),
          Motivations(text: 'Playa'),
          Motivations(text: 'Ocio y Entretenimiento'),
          Motivations(text: 'Naturaleza'),
          Motivations(text: 'Cultura'),
          Motivations(text: 'Deportes'),
          Motivations(text: 'Deportes'),
          Motivations(text: 'Salud y Cuidado'),
          Motivations(text: 'Cultura'),
          DefaultButton(
           text: "Guardar",
           press: () {
             Navigator.pushNamed(context, HomePage.routeName);
           },
          ),



          ],
        ),
      ),
    );
  }
}
