
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
final String text;
final  ontap;
final Color color;
RoundedButton({this.color,this.text,this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
                elevation: 5,
                color: color,
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  child: Text(text,style: TextStyle(color: Colors.white),),
                  onPressed: ontap,
                  minWidth: 200,
                  height: 42,
                  ),   
            ),
    );
  }
}
