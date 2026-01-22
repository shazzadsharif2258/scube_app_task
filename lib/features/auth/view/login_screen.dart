import 'package:flutter/material.dart';
import 'package:scube_app_task/features/auth/widget/login_card.dart';
import 'package:scube_app_task/shared/widgets/app_logo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

          const LoginCard(),
        ],
      ),
    );
  }
}
