import 'package:starter_firebase_auth/firebase_options_dev.dart';
import 'package:starter_firebase_auth/main.dart';
import 'flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  runMainApp(DefaultFirebaseOptions.currentPlatform);
}
