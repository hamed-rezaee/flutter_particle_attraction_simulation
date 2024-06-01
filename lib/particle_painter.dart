import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_particle_attraction_simulation/particle.dart';

class ParticlePainter extends CustomPainter {
  ParticlePainter(
    this.particles,
    this.mx,
    this.my,
    this.thickness,
    this.drag,
    this.ease,
  );

  final List<Particle> particles;
  final double mx, my;
  final double thickness, drag, ease;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..shader = const RadialGradient(
        colors: [Colors.orange, Colors.red],
      ).createShader(
        Rect.fromCircle(center: Offset(mx, my), radius: thickness / 15),
      )
      ..blendMode = BlendMode.plus
      ..style = PaintingStyle.fill;

    for (var p in particles) {
      double dx = mx - p.x;
      double dy = my - p.y;
      double d = dx * dx + dy * dy;
      double f = -thickness / d;

      if (d < thickness) {
        double t = atan2(dy, dx);

        p.vx += f * cos(t);
        p.vy += f * sin(t);
      }

      p.x += (p.vx *= drag) + (p.ox - p.x) * ease;
      p.y += (p.vy *= drag) + (p.oy - p.y) * ease;

      canvas.drawCircle(Offset(p.x, p.y), 3, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
