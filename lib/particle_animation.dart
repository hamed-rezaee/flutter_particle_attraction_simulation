import 'package:flutter/material.dart';
import 'package:flutter_particle_attraction_simulation/particle.dart';
import 'package:flutter_particle_attraction_simulation/particle_painter.dart';

const int rows = 80;
const int cols = 80;
const int numParticles = rows * cols;
const double thickness = 40 * 40;
const double spacing = 8;
const double margin = 100;
const double drag = 0.95;
const double ease = 0.25;

class ParticleAnimation extends StatefulWidget {
  const ParticleAnimation({super.key});

  @override
  State<ParticleAnimation> createState() => _ParticleAnimationState();
}

class _ParticleAnimationState extends State<ParticleAnimation> {
  List<Particle> particles = [];
  double mx = 0, my = 0;

  @override
  void initState() {
    super.initState();

    Stream.periodic(const Duration(milliseconds: 16))
        .listen((_) => setState(() {}));

    _initParticles();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            mx = details.localPosition.dx;
            my = details.localPosition.dy;
          });
        },
        child: CustomPaint(
          painter: ParticlePainter(particles, mx, my, thickness, drag, ease),
          size: const Size(double.infinity, double.infinity),
        ),
      );

  void _initParticles() {
    for (int i = 0; i < numParticles; i++) {
      double x = margin + spacing * (i % cols);
      double y = margin + spacing * (i ~/ cols);

      particles.add(Particle(x, y));
    }
  }
}
