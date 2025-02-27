import 'package:firebase_auth/firebase_auth.dart' hide AuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key, this.providers});

  final List<AuthProvider<AuthListener, AuthCredential>>? providers;

  void onSignedIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/profile');
  }

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providers: providers,
      actions: [
        AuthStateChangeAction<UserCreated>((context, state) {
          // Put any new user logic here
          onSignedIn(context);
        }),
        AuthStateChangeAction<SignedIn>((context, state) {
          onSignedIn(context);
        }),
      ],
    );
  }
}
