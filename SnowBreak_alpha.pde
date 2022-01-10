void setup() {
	fullScreen();
	initSim();
}

void draw() {
noSmooth();
  showSim();
}

void showSim() {
  image(sim, marginL, marginL, sim.width * simScaling, sim.height * simScaling);
}

int xywToI(int x, int y, int w) {
  return y * w + x;
}
