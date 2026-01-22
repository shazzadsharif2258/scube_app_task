import 'package:flutter/material.dart';
import 'package:scube_app_task/features/second_page/widgets/data_list.dart';
import 'package:scube_app_task/features/second_page/widgets/power_dount.dart';
import 'package:scube_app_task/features/second_page/widgets/source_load_toggle.dart';
import 'package:scube_app_task/features/second_page/widgets/summary_tabs.dart';

class ElectricitySection extends StatelessWidget {
  const ElectricitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: const Color(0xFFE5E7EB),
          ),
        ),
        child: Column(
          children: [
            const SummaryTabs(),

            const Divider(height: 1),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Electricity',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF9CA3AF),
                ),
              ),
            ),

            const Divider(height: 1),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: PowerDonut(value: 75),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SourceLoadToggle(),
            ),

            const SizedBox(height: 12),

            const DataList(),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
