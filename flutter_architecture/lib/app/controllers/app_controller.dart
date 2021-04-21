import 'package:flutter/foundation.dart';
import '../models/appConfig_model.dart';

class AppController {
  // now we have our sington protected
  static final AppController instance = AppController._();
  AppController._();
  final config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  void changeTheme(bool value) => themeSwitch.value = value;
}
