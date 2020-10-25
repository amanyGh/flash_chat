import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/widgets/welcome_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  static const route='/registration_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('welcome')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(tag:'logo',child: Image.asset('assets/images/activeOnLightCopy@3x.png',width: 100,)),

            // IconButton(
            //     icon: Icon(
            //       CupertinoIcons.bolt_fill,
            //       color: Colors.yellow[600],
            //     ),
            //     onPressed: () {}),
            
            WelcomeContainer(text: 'Register',
            containerColor: Colors.blue[900],
            ontap: ()=>Navigator.of(context).pushNamed(WelcomeScreen.route),
            ),
          ],
        ),
      ),
    );
  }
}