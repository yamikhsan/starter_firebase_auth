import 'package:firebase_auth/firebase_auth.dart' hide AuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, this.providers});

  final List<AuthProvider<AuthListener, AuthCredential>>? providers;

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providers: providers,
      actions: [
        SignedOutAction((context) {
          Navigator.pushReplacementNamed(context, '/sign-in');
        }),
      ],
    );
  }
}
