import 'package:flutter/material.dart';

class WelcomeContainer extends StatelessWidget {
final String text;
final  ontap;
final Color containerColor;
WelcomeContainer({this.containerColor,this.text,this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: ontap,
              child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width*0.9,
          height:  MediaQuery.of(context).size.height*0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: containerColor
          ),
          child: Text(text,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
