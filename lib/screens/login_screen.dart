import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/widgets/welcome_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  static const route='/login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Hero(tag:'logo',child: Image.asset('assets/images/activeOnLightCopy@3x.png',width: 100,)),
            // IconButton(
            //     icon: Icon(
            //       CupertinoIcons.bolt_fill,
            //       color: Colors.yellow[600],
            //       size: 100,
            //     ),
            //     onPressed: () {}),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                   width: MediaQuery.of(context).size.width*0.9,
          height:  MediaQuery.of(context).size.height*0.08,
          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  )
          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
             width: MediaQuery.of(context).size.width*0.9,
          height:  MediaQuery.of(context).size.height*0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.blue,
              width: 1,
            )
          ),
            ),
                ),
              ],
            ),
            
            
            WelcomeContainer(text: 'Loggin',
            containerColor: Colors.blue[900],
            ontap: ()=>Navigator.of(context).pushNamed(WelcomeScreen.route),
            ),
          ],
        ),
      ),
    );
  }
}