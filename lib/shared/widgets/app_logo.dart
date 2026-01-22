import 'package:flutter/material.dart';
import 'package:scube_app_task/core/assets/images/images.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(Images.logoImage, height: 80),
        SizedBox(height: 12),
        Text(
          'SCUBE\nControl & Monitoring System',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
