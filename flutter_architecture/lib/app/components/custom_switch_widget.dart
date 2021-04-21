import 'package:flutter/material.dart';
import '../controllers/app_controller.dart';

class CustomSwitchWidget extends StatelessWidget {
  @override
  Switch build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDark,
      onChanged: (val) {
        AppController.instance.changeTheme(val);
      },
    );
  }
}
