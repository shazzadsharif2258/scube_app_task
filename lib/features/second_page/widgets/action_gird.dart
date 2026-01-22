import 'package:flutter/material.dart';
import 'package:scube_app_task/core/assets/images/weather_icons.dart';
import 'package:scube_app_task/features/second_page/widgets/action_tile.dart';

class ActionGrid extends StatelessWidget {
  const ActionGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmall = constraints.maxWidth < 360;

        return GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: isSmall ? 3 : 3.3,
          children: const [
            ActionTile(
              title: 'Analysis Pro',
              icon: WeatherIcons.chartImg,
            ),
            ActionTile(
              title: 'G. Generator',
              icon: WeatherIcons.generatorImg,
            ),
            ActionTile(
              title: 'Plant Summery',
              icon: WeatherIcons.chargeImg,
            ),
            ActionTile(
              title: 'Natural Gas',
              icon: WeatherIcons.fireImg,
            ),
            ActionTile(
              title: 'D. Generator',
              icon: WeatherIcons.gen2Img,
            ),
            ActionTile(
              title: 'Water Process',
              icon: WeatherIcons.faucetImg,
            ),
          ],
        );
      },
    );
  }
}
