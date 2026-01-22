import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_app_task/core/constants/app_text_style.dart';
import 'package:scube_app_task/shared/widgets/navigate_button.dart';
import 'package:scube_app_task/features/second_page/widgets/action_gird.dart';
import 'package:scube_app_task/features/second_page/widgets/electricity_scetion.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF4FA),
      appBar: AppBar(
        title: const Text(
          '2nd Page',
          style: AppTextStyles.h2,
        ),
        leading: const BackButton(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Badge(
              backgroundColor: Colors.red,
              child: Icon(Icons.notifications_outlined),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            NavigateButton(
              label: '1st Page Navigate',
              onTap: () => Get.back(),
            ),

            SizedBox(height: 20),
            ElectricitySection(),
            SizedBox(height: 16),
            ActionGrid(),
          ],
        ),
      ),
    );
  }
}
