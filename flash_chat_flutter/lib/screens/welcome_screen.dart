import 'package:flutter/material.dart';
import 'package:flash_chat/screens/index.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/index.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeId = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    // with curves, the upperbound must be 1 at max
    // animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    // tween animation
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    // controller.forward -> Go from 0 to 1
    // controller.reverse(from: 1.0) -> Go from the specified value to 0;
    controller.forward();
    // controller.reverse(from: 1.0);

    /* animation example that goes from 0 -> 1 and then 1 -> 0;
      animation.addStatusListener((status) {
        print('Status $status');
        if (status == AnimationStatus.completed) {
          controller.reverse(from: 1.0);
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    */

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                    // height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  speed: Duration(milliseconds: 250),
                  text: [
                    'Flash Chat',
                  ],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Colors.lightBlueAccent,
              title: 'Log In',
              onPressed: () =>
                  Navigator.pushNamed(context, LoginScreen.routeId),
            ),
            RoundedButton(
              color: Colors.blueAccent,
              title: 'Register',
              onPressed: () =>
                  Navigator.pushNamed(context, RegistrationScreen.routeId),
            ),
          ],
        ),
      ),
    );
  }
}
