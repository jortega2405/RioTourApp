
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateInput extends StatelessWidget {
  const DateInput({
    Key key, @required this.icon, @required this.hint, this.inputType, this.inputAction,
  }) : super(key: key);
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFF7643).withOpacity(0.9),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
            ), 
          ),
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}