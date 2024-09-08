import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weight_tracker_app/pages/splash/splash_view.dart';
import 'config/theme/theme_extension.dart';
import 'constants/project_strings.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light.theme,
      title: ProjectStrings.appName,
      home: const SplashView(),
    );
  }
}
