import 'package:flutter/material.dart';
import 'package:scube_app_task/core/constants/app_colors.dart';
import 'package:scube_app_task/shared/widgets/app_icon.dart';
import '../../model/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel data;

  const WeatherCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmall = constraints.maxWidth < 360;
        final leftWidth = constraints.maxWidth * 0.38;

        return SizedBox(
          height: isSmall ? 120 : 130,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                children: [
                  Container(
                    width: leftWidth,
                    padding: const EdgeInsets.all(14),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(18),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${data.temperature}°C',
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Module\nTemperature',
                          style: TextStyle(
                            color: Colors.black54,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(
                        40,
                        12,
                        14,
                        12,
                      ),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF6AAEFF),
                            Color(0xFFB983FF),
                          ],
                        ),
                        borderRadius:
                            BorderRadius.horizontal(
                              right: Radius.circular(18),
                            ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.wind,
                                  maxLines: 1,
                                  overflow:
                                      TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  'Wind Speed & Direction',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  '${data.irradiation} w/m²',
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  'Effective Irradiation',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AppIcon(
                            path: data.weatherIcon,
                            size: isSmall ? 40 : 60,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Positioned(
                left: leftWidth - 22,
                top: 1,
                bottom: 0.5,
                child: Container(
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

              Positioned(
                left: leftWidth - 40,
                top: 0,
                bottom: 0,
                child: Center(
                  child: Image.asset(
                    data.thermometerIcon,
                    height: isSmall ? 64 : 100,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
