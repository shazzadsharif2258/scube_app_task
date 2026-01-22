import 'package:flutter/material.dart';

class DataItem {
  final Color indicatorColor;
  final String icon;
  final String title;
  final String status;
  final Color statusColor;
  final String data1;
  final String data2;

  const DataItem({
    required this.indicatorColor,
    required this.icon,
    required this.title,
    required this.status,
    required this.statusColor,
    required this.data1,
    required this.data2,
  });
}
