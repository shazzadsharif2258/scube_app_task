import 'package:flutter/material.dart';
import 'package:scube_app_task/core/assets/images/weather_icons.dart';
import 'inverter_metric.dart';

class InverterCard extends StatelessWidget {
  const InverterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'LT_01',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Image.asset(
                    WeatherIcons.circlePower,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 6),
                  Text(
                    '495.505 kWp / 440 kW',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1E88E5),
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 12),
          const Divider(height: 1),
          const SizedBox(height: 12),

          LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InverterMetric(
                          icon: WeatherIcons.lifetimeEnergy,
                          title: 'Lifetime Energy',
                          value: '352.96 MWh',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: InverterMetric(
                          icon: WeatherIcons.todayEnergy,
                          title: 'Today Energy',
                          value: '273.69 kWh',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: InverterMetric(
                          icon:
                              WeatherIcons.prevMeterEnergy,
                          title: 'Prev. Meter Energy',
                          value: '0.00 MWh',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: InverterMetric(
                          icon: WeatherIcons.livePower,
                          title: 'Live Power',
                          value: '352.96 MWh',
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
