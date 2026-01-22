import 'package:flutter/material.dart';
import 'package:scube_app_task/core/assets/images/weather_icons.dart';
import 'package:scube_app_task/features/second_page/model/data_item.dart';

import 'data_tile.dart';

class DataList extends StatelessWidget {
  const DataList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DataItem> items = [
      const DataItem(
        indicatorColor: Colors.blue,
        icon: WeatherIcons.solarImg,
        title: 'Data View',
        status: 'Active',
        statusColor: Colors.blue,
        data1: '55505.63',
        data2: '58805.63',
      ),
      const DataItem(
        indicatorColor: Colors.orange,
        icon: WeatherIcons.assetImg,
        title: 'Data Type 2',
        status: 'Active',
        statusColor: Colors.blue,
        data1: '55505.63',
        data2: '58805.63',
      ),
      const DataItem(
        indicatorColor: Colors.blue,
        icon: WeatherIcons.asset2Img,
        title: 'Data Type 3',
        status: 'Inactive',
        statusColor: Colors.red,
        data1: '55505.63',
        data2: '58805.63',
      ),
    ];

    return SizedBox(
      height: 320,
      child: Scrollbar(
        thumbVisibility: true,
        thickness: 5,
        radius: const Radius.circular(8),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return DataTile(
              indicatorColor: item.indicatorColor,
              icon: item.icon,
              title: item.title,
              status: item.status,
              statusColor: item.statusColor,
              data1: item.data1,
              data2: item.data2,
            );
          },
        ),
      ),
    );
  }
}
