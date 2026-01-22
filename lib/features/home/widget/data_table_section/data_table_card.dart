import 'package:flutter/material.dart';
import 'package:scube_app_task/features/home/widget/data_table_section/data_table_row.dart';

class DataTableCard extends StatelessWidget {
  const DataTableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              16,
              14,
              16,
              12,
            ),
            child: Row(
              children: const [
                Expanded(flex: 4, child: SizedBox()),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Yesterday's Data",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF374151),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Today's Data",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF374151),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Divider(height: 1),

          const DataTableRow(
            title: 'AC Max Power',
            yesterday: '1636.50 kW',
            today: '2121.88 kW',
          ),
          const DataTableRow(
            title: 'Net Energy',
            yesterday: '6439.16 kWh',
            today: '4875.77 kWh',
            isStriped: true,
          ),
          const DataTableRow(
            title: 'Specific Yield',
            yesterday: '1.25 kWh/kWp',
            today: '0.94 kWh/kWp',
          ),
          const DataTableRow(
            title: 'Net Energy',
            yesterday: '6439.16 kWh',
            today: '4875.77 kWh',
            isStriped: true,
          ),
          const DataTableRow(
            title: 'Specific Yield',
            yesterday: '1.25 kWh/kWp',
            today: '0.94 kWh/kWp',
          ),
        ],
      ),
    );
  }
}
