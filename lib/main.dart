import 'package:flutter/material.dart';
import 'package:flutter_particle_attraction_simulation/particle_animation.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Particle Attraction Simulation',
        home: Scaffold(
          backgroundColor: Colors.black,
          body: ParticleAnimation(),
        ),
      );
}
