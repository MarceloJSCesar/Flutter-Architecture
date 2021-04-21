import 'package:flutter/foundation.dart';

class AppController {
  // now we have our sington protected
  static final AppController instance = AppController._();
  AppController._();

  final themeSwitch = ValueNotifier<bool>(false);

  void changeTheme(bool value) => themeSwitch.value = value;
}
