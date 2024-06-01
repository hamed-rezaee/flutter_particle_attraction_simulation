class Particle {
  Particle(this.x, this.y)
      : ox = x,
        oy = y;

  double x, y, vx = 0, vy = 0, ox, oy;
}
