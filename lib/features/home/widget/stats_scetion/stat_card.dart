import 'package:flutter/material.dart';
import 'package:scube_app_task/shared/widgets/app_icon.dart';

class StatCard extends StatelessWidget {
  final String icon;
  final String value;
  final String label;
  final String? subLabel; // (Till Today)
  final Color iconBg;

  const StatCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    this.subLabel,
    required this.iconBg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78, // 👈 consistent height like design
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          /// ICON
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: AppIcon(path: icon, size: 22),
            ),
          ),

          const SizedBox(width: 10),

          /// TEXT
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 2),
                RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: label,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6B7280),
                    ),
                    children: subLabel != null
                        ? [
                            TextSpan(
                              text: ' $subLabel',
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color(0xFF9CA3AF),
                              ),
                            ),
                          ]
                        : [],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
