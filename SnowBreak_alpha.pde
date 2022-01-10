@Override void settings() {
  size(1920, 1080);
  noSmooth();
}

void setup() {
	size(1920, 1080);
	initSim();
}

void draw() {
  showSim();
}

void showSim() {
  image(sim, marginL, marginL, sim.width * simScaling, sim.height * simScaling);
}

int xywToI(int x, int y, int w) {
  return y * w + x;
}
