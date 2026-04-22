import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:tienda/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providers: [EmailAuthProvider()],
      actions: [
        AuthStateChangeAction<UserCreated>((context, state) {
          //algo se ejecuta aqui
          final route = MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
          );
          Navigator.push(context, route);
        }),
        AuthStateChangeAction<SignedIn>((context, state){
          final route = MaterialPageRoute(builder: (context) => HomeScreen());
          Navigator.pushReplacement(context, route);
        }),
      ],
    );
  }
}