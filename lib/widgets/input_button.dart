import 'package:flutter/material.dart';
import 'package:flash_chat/constraints.dart';
class InputButton extends StatelessWidget {
  final String text;
  final Function onchange;
  InputButton({this.text,this.onchange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textAlign: TextAlign.center,
        onChanged: onchange,
        decoration: kTextFieldInputDecoration.copyWith(hintText: text)
        
      ),
    );
  }
}