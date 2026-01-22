import 'package:flutter/material.dart';

class PlantInfoHeader extends StatelessWidget {
  final String icon;

  const PlantInfoHeader({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFEAF3FF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(icon, width: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  height: 1.4,
                ),
                children: [
                  TextSpan(
                    text: 'Total Num of PV Module : ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '6372 pcs. (585 Wp each)',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
