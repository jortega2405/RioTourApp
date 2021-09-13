import 'package:app_travel/Pages/form/components/date_input.dart';
import 'package:app_travel/Pages/form/components/text_input.dart';
import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.only(left: 10, right: 10),
     child: Column(
       children: [
         Column(
           children: [
             Text(
               'A donde vamos?',
                style: TextStyle(
                  fontSize: 16,
                ),
             ),
             TextInput(hint: 'Vamos a:', icon: Icons.place),
             Row(
               children: [
                Text('Desde:', style: TextStyle(
                  fontSize: 16,
                ),),
               ],
             ),
             Column(
               children: [
                 DateInput(
                   icon: Icons.calendar_today,
                   hint: 'Desde',
                   inputType: TextInputType.datetime,
                   inputAction: TextInputAction.next,
                 ),
               ],
             ),
             Row(
               children: [
                Text('Hasta:', style: TextStyle(
                  fontSize: 16,
                ),),
               ],
             ),
             Column(
               children: [
                 DateInput(
                   icon: Icons.calendar_today,
                   hint: 'Hasta',
                   inputType: TextInputType.datetime,
                   inputAction: TextInputAction.done,
                 )
               ],
             ),
           ],

         )
       ],
     ),

    );
  }
}