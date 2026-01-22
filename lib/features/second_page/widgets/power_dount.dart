import 'dart:math';
import 'package:flutter/material.dart';

class PowerDonut extends StatelessWidget {
  final double value;

  const PowerDonut({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: 220,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: const Size(220, 220),
            painter: _DonutPainter(value),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'Total Power',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 6),
              Text(
                '5.53 kw',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DonutPainter extends CustomPainter {
  final double percent;
  _DonutPainter(this.percent);

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.width / 2 - 14;

    final bgPaint = Paint()
      ..color = const Color(0xFFD6EEFF)
      ..strokeWidth = 30
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final fgPaint = Paint()
      ..shader =
          const LinearGradient(
            colors: [Color(0xFF0A8CFF), Color(0xFF4FC3FF)],
          ).createShader(
            Rect.fromCircle(center: center, radius: radius),
          )
      ..strokeWidth = 30
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, bgPaint);

    final sweep = 2 * pi * (percent / 100);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      sweep,
      false,
      fgPaint,
    );
  }

  @override
  bool shouldRepaint(_) => true;
}
