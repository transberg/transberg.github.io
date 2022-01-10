void settings() {
  
  size(1920, 1080);
}

void setup() {
	noSmooth();
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
