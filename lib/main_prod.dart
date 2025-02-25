import 'package:starter_firebase_auth/firebase_options.dart';
import 'package:starter_firebase_auth/main.dart';
import 'flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  runMainApp(DefaultFirebaseOptions.currentPlatform);
}
