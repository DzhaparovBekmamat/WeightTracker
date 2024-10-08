import 'package:flutter/material.dart';
import '../../utils/services/cache/shared_manager.dart';
import '../home/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late SharedManager manager;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    manager = SharedManager();
    await manager.init();
    goToHome();
  }

  void goToHome() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => HomeView(manager: manager)));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Color.fromRGBO(98, 0, 238, 1));
  }
}
