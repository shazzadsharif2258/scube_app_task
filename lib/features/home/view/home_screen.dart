import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_app_task/core/routes/app_routes.dart';
import 'package:scube_app_task/features/home/controller/home_controller.dart';
import 'package:scube_app_task/features/home/widget/data_table_section/data_table_card.dart';
import 'package:scube_app_task/features/home/widget/inverter_section/inverter_card.dart';
import 'package:scube_app_task/shared/widgets/navigate_button.dart';
import 'package:scube_app_task/features/home/widget/plant_section/plant_info_card.dart';
import 'package:scube_app_task/features/home/widget/stats_scetion/stats_grid.dart';
import 'package:scube_app_task/features/home/widget/weather_section/weather_card.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF4FA),
      appBar: AppBar(
        title: const Text('1st Page'),
        leading: BackButton(
          onPressed: () => Get.toNamed(AppRoutes.splash),
        ),
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
              label: '2nd Page Navigate',
              onTap: () => Get.toNamed('/second-page'),
            ),

            const SizedBox(height: 16),
            const StatsGrid(),
            const SizedBox(height: 16),

            Obx(
              () => Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  WeatherCard(
                    data: controller.currentWeather.value,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            const DataTableCard(),
            const SizedBox(height: 16),
            const PlantInfoCard(),
            const SizedBox(height: 16),
            const InverterCard(),
            const SizedBox(height: 16),
            const InverterCard(),
          ],
        ),
      ),
    );
  }
}
