

import 'package:app_travel/Pages/form/components/body_form.dart';
import 'package:flutter/material.dart';


import 'components/body_form.dart';

class FormPage extends StatelessWidget {
  static String routeName = "/form_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyForm(),
    );
  }
}