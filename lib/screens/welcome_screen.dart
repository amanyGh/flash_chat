import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/widgets/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const route = '/welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller=AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    );
    // animation=CurvedAnimation(
    //   parent: controller,
    //   curve: Curves.easeIn
    // );
    animation=ColorTween(
      begin: Colors.blueGrey,
      end: Colors.white).animate(controller);
    controller.forward();
    // controller.reverse(from: 1.0);
    // controller.forward();
    // animation.addStatusListener((status) { 
    //   if(status==AnimationStatus.completed){
    //    controller.reverse(from: 1.0);
    //   }else if(status==AnimationStatus.dismissed){
    // controller.forward();

    //   }
    // });
    controller.addListener(() {
      setState(() {
        
      });
      print(animation.value);
    });
    
  }

  @override
  void dispose() { 
    controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                  icon: Icon(
                    CupertinoIcons.bolt_fill,
                    color: Colors.yellow[600],
                    size: 40,
                  ),
                  onPressed: () {}),
                ),
                TypewriterAnimatedTextKit(
                  text: [
                    'Flash Chat'
                  ],
                  textStyle: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45
                    ),
              
            ),
              ],
            ),
            RoundedButton(color: Colors.lightBlueAccent,text: 'Log in',ontap: ()=>Navigator.of(context).pushNamed(LoginScreen.route),),
            RoundedButton(color: Colors.blueAccent,text: 'register',ontap: ()=>Navigator.of(context).pushNamed(RegistrationScreen.route),),
            
          ],
        ),
      ),
    );
  }
}
