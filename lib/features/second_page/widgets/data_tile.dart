import 'package:flutter/material.dart';

class DataTile extends StatelessWidget {
  final Color indicatorColor;
  final String icon;
  final String title;
  final String status;
  final Color statusColor;
  final String data1;
  final String data2;

  const DataTile({
    super.key,
    required this.indicatorColor,
    required this.icon,
    required this.title,
    required this.status,
    required this.statusColor,
    required this.data1,
    required this.data2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFEFF8FF),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFBFDBFE)),
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 36,
            width: 36,
            fit: BoxFit.contain,
          ),

          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: indicatorColor,
                        borderRadius: BorderRadius.circular(
                          2,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '($status)',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: statusColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  'Data 1  :  $data1',
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  'Data 2  :  $data2',
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.chevron_right,
            size: 26,
            color: Color(0xFF6B7280),
          ),
        ],
      ),
    );
  }
}
