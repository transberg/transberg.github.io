void setup() {
	size(1600, 900);
	initSim();
}

void draw() {
noSmooth();
initSim();
  showSim();
}

void showSim() {
  image(sim, marginL, marginL, sim.width * simScaling, sim.height * simScaling);
}

int xywToI(int x, int y, int w) {
  return y * w + x;
}
