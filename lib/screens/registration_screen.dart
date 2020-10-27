import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/widgets/input_button.dart';
import 'package:flash_chat/widgets/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  static const route='/registration_screen';
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('welcome')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(
                  CupertinoIcons.bolt_fill,
                  color: Colors.yellow[600],
                  size: 100,
                ),
                onPressed: () {}),
             Column(
              children: [
                InputButton(text: 'Enter your email',
                onchange: (val){
                email=val;
                },),
                InputButton(text: 'Enter your Password',onchange: (val){
                  password=val;
                },),
              ],
            ),
            RoundedButton(text: 'Register',
            color: Colors.blueAccent,
            ontap: (){
              Navigator.of(context).pushNamed(WelcomeScreen.route);
              print(email);
              print(password);
            } ,
            ),
          ],
        ),
      ),
    );
  }
}