import 'package:flutter/material.dart';
import 'package:scube_app_task/core/assets/images/weather_icons.dart';
import 'stat_card.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        int columns = width < 360 ? 2 : 3;
        final spacing = 12.0;
        final itemWidth =
            (width - (spacing * (columns - 1))) / columns;

        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: [
            _item(
              width: itemWidth,
              icon: WeatherIcons.liveAcPower,
              value: '10000 kW',
              label: 'Live AC Power',
              color: const Color(0xFFE9FBEF),
            ),
            _item(
              width: itemWidth,
              icon: WeatherIcons.plantGeneration,
              value: '82.58 %',
              label: 'Plant Generation',
              color: const Color(0xFFEAF7FF),
            ),
            _item(
              width: itemWidth,
              icon: WeatherIcons.livePR,
              value: '85.61 %',
              label: 'Live PR',
              color: const Color(0xFFEDEBFF),
            ),
            _item(
              width: itemWidth,
              icon: WeatherIcons.cumulativePR,
              value: '27.58 %',
              label: 'Cumulative PR',
              color: const Color(0xFFEAF3FF),
            ),
            _item(
              width: itemWidth,
              icon: WeatherIcons.returnPV,
              value: '10000 ৳',
              label: 'Return PV',
              subLabel: '(Till Today)',
              color: const Color(0xFFFFF3E8),
            ),
            _item(
              width: itemWidth,
              icon: WeatherIcons.totalEnergy,
              value: '10000 kWh',
              label: 'Total Energy',
              color: const Color(0xFFF3E8FF),
            ),
          ],
        );
      },
    );
  }

  Widget _item({
    required double width,
    required String icon,
    required String value,
    required String label,
    String? subLabel,
    required Color color,
  }) {
    return SizedBox(
      width: width,
      child: StatCard(
        icon: icon,
        value: value,
        label: label,
        subLabel: subLabel,
        iconBg: color,
      ),
    );
  }
}
