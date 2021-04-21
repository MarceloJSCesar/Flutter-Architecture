import 'package:flutter/foundation.dart';
import '../services/shared_local_storage_service.dart';
import '../models/appConfig_model.dart';
import '../interfaces/local_storage_interface.dart';

class AppController {
  // now we have our sington protected
  static final AppController instance = AppController._();
  AppController._() {
    _iLocalStorage.get('isDark').then((val) {
      themeSwitch.value = val;
    });
  }
  final config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;
  ILocalStorage _iLocalStorage = SharedLocalStorageService();

  void changeTheme(bool value) async {
    themeSwitch.value = value;
    await _iLocalStorage.put('isDark', value);
  }
}
