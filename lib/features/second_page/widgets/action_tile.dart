import 'package:flutter/material.dart';

class ActionTile extends StatelessWidget {
  final String title;
  final String icon;

  const ActionTile({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color.fromARGB(255, 203, 203, 204),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 26,
            width: 26,
            fit: BoxFit.contain,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF6B7280),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
