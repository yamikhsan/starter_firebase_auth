import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, AuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
List<AuthProvider<AuthListener, AuthCredential>> authController(Ref ref) {
  return [EmailAuthProvider()];
}
