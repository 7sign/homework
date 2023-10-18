class Particle {
  PVector location;
  PVector velocity;
  color particleColor;

  Particle() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-1, 1), random(-1, 1));
    particleColor = color(random(255), random(255), random(255));
  }

  void update() {
    location.add(velocity);
  }

  void display() {
    noStroke();
    fill(particleColor);
    ellipse(location.x, location.y, 10, 10);
  }
}

Particle[] particles;

void setup() {
  size(800, 600);
  particles = new Particle[100];
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  background(0);
  for (Particle p : particles) {
    p.update();
    p.display();
  }
}
