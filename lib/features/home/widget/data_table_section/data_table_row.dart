import 'package:flutter/material.dart';

class DataTableRow extends StatelessWidget {
  final String title;
  final String yesterday;
  final String today;
  final bool isStriped;

  const DataTableRow({
    super.key,
    required this.title,
    required this.yesterday,
    required this.today,
    this.isStriped = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 16,
      ),
      color: isStriped
          ? const Color(0xFFF3F7FB)
          : Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF111827),
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Text(
              yesterday,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF111827),
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Text(
              today,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF111827),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
