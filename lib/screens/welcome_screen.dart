import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/widgets/welcome_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const route = '/welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(tag:'logo',child: Image.asset('assets/images/activeOnLightCopy@3x.png',width: 20,)),
                // IconButton(
                //     icon: Icon(
                //       CupertinoIcons.bolt_fill,
                //       color: Colors.yellow[600],
                //       size: 40,
                //     ),
                //     onPressed: () {}),
                Text(
                  'Flash Chat',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 5,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  child: Text('Log in'),
                  onPressed: ()=>Navigator.of(context).pushNamed(LoginScreen.route),
                  minWidth: 200,
                  height: 42,
                  ),   
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Material(
                elevation: 5,
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  child: Text('register'),
                  onPressed: ()=>Navigator.of(context).pushNamed(RegistrationScreen.route),
                  minWidth: 200,
                  height: 42,
                  ),   
            ),
             ),
            // WelcomeContainer(
            //   text: 'Log in',
            //   containerColor: Colors.blue[300],
            //   ontap: () => Navigator.of(context).pushNamed(LoginScreen.route),
            // ),
            // WelcomeContainer(
            //   text: 'register',
            //   containerColor: Colors.blue[900],
            //   ontap: () =>
            //       Navigator.of(context).pushNamed(RegistrationScreen.route),
            // ),
          ],
        ),
      ),
    );
  }
}
