import 'package:flutter/material.dart';
import 'package:flash_chat/screens/index.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.routeId,
      routes: {
        WelcomeScreen.routeId: (context) => WelcomeScreen(),
        LoginScreen.routeId: (context) => LoginScreen(),
        RegistrationScreen.routeId: (context) => RegistrationScreen(),
        ChatScreen.routeId: (context) => ChatScreen(),
      },
    );
  }
}
