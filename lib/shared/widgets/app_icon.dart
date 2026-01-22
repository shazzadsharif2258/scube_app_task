import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon extends StatelessWidget {
  final String path;
  final double size;

  const AppIcon({
    super.key,
    required this.path,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    if (path.endsWith('.svg')) {
      return SvgPicture.asset(
        path,
        height: size,
        width: size,
      );
    } else {
      return Image.asset(path, height: size, width: size);
    }
  }
}
