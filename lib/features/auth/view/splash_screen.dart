import 'package:flutter/material.dart';
import 'package:scube_app_task/shared/widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: height * 0.18,
            left: 0,
            right: 0,
            child: const AppLogo(),
          ),
        ],
      ),
    );
  }
}
