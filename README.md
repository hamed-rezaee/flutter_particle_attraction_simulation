# Particle Attraction Simulation

A Flutter application that simulates the movement and interaction of particles based on mouse position. Particles are attracted to the mouse or to a calculated point if the mouse is not moving. This project demonstrates the use of Flutter's `CustomPainter` for custom drawing and `GestureDetector` for handling user interactions.

![Particle Attraction Simulation](./flutter_particle_attraction_simulation.gif)

## Getting Started

### Prerequisites

- Flutter installed on your machine. If you don't have Flutter installed, follow the instructions on the [official Flutter website](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/hamed-rezaee/flutter_particle_attraction_simulation.git
   ```

2. Install the dependencies:
    ```bash
    flutter pub get
    ```
3. Run the app:
    ```bash
    flutter run
    ```

### Project Structure

 - `main`: Entry point of the application. Sets up the main widget and handles particle logic.
 - `Particle`: A class representing an individual particle.
 - `ParticleAnimation`: A stateful widget that manages the particle system and user interactions.
 - `ParticlePainter`: A custom painter that renders the particles on the canvas.

### Customization

You can customize the behavior and appearance of the particles by modifying the following constants in ParticleAnimation:

 - `rows`: Number of rows of particles.
 - `cols`: Number of columns of particles.
 - `numParticles`: Total number of particles (rows * cols).
 - `thickness`: Attraction strength. Increase for stronger attraction.
 - `spacing`: Distance between particles.
 - `margin`: Margin around the particle grid.
 - `color`: Color intensity of the particles.
 - `drag`: Damping factor for particle movement.
 - `ease`: Ease factor for particle movement.

### Acknowledgements

This project was inspired by https://codepen.io/soulwire/pen/DdGRYG by Justin Windle.

### License
This project is licensed under the MIT License.

### Contributing
Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.
