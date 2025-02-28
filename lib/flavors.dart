import 'package:flutter/material.dart';

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
}
