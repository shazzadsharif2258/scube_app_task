import 'package:flutter/material.dart';
import 'package:scube_app_task/core/assets/images/weather_icons.dart';
import 'package:scube_app_task/features/home/widget/plant_section/plant_info_header.dart';
import 'package:scube_app_task/features/home/widget/plant_section/plant_info_title.dart';

class PlantInfoCard extends StatelessWidget {
  const PlantInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PlantInfoHeader(icon: WeatherIcons.pvModule),
        const SizedBox(height: 12),

        LayoutBuilder(
          builder: (context, constraints) {
            final isSmall = constraints.maxWidth < 360;

            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: isSmall ? 2.6 : 2.8,
                  ),
              itemBuilder: (_, index) {
                final items = [
                  const PlantInfoTile(
                    icon: WeatherIcons.acCapacity,
                    title: 'Total AC Capacity',
                    value: '3000 kW',
                  ),
                  const PlantInfoTile(
                    icon: WeatherIcons.dcCapacity,
                    title: 'Total DC Capacity',
                    value: '3.727 MWp',
                  ),
                  const PlantInfoTile(
                    icon: WeatherIcons.commissioningDate,
                    title: 'Date of Commissioning',
                    value: '17/07/2024',
                  ),
                  const PlantInfoTile(
                    icon: WeatherIcons.inverterCount,
                    title: 'Number of Inverter',
                    value: '30',
                  ),
                  const PlantInfoTile(
                    icon: WeatherIcons.acCapacity,
                    title: 'Total AC Capacity',
                    value: '3000 kW',
                  ),
                  const PlantInfoTile(
                    icon: WeatherIcons.dcCapacity,
                    title: 'Total DC Capacity',
                    value: '3.727 MWp',
                  ),
                ];
                return items[index];
              },
            );
          },
        ),
      ],
    );
  }
}
