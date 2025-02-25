// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'app.dart';
//
// FutureOr<void> main() async {
//   runApp(const App());
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void runMainApp(FirebaseOptions firebaseOptions) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions);
  runApp(const App());
}