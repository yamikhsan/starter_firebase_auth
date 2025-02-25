import 'package:flutter/material.dart';
import 'package:starter_firebase_auth/constants/app_colors.dart';

enum Flavor { prod, dev }

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Production App';
      case Flavor.dev:
        return 'Development App';
      default:
        return 'title';
    }
  }

  static Color get color {
    switch (appFlavor) {
      case Flavor.prod:
        return AppColors.prod;
      case Flavor.dev:
        return AppColors.dev;
      default:
        return Colors.green;
    }
  }
}
