import 'package:flutter/material.dart';
import './pages/home/home_page.dart';
import 'controllers/app_controller.dart';
import './services/shared_local_storage_service.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isDark, child) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: isDark ? Brightness.dark : Brightness.light,
              primarySwatch: Colors.blue,
            ),
            home: HomePage());
      },
    );
  }
}
