
// Simulation constants
float tau = 0.51f;
float lambda = 0.51f;
float c = lambda/tau;
float lambdaSquared = lambda * lambda;
float smagorinskyConstant = 0.3;
float scSquared = smagorinskyConstant * smagorinskyConstant;

// Simulation variables
PVector[] unitVelocities;
float[][][] distributions;
float[][][] equilibriumDistributions;
float[][] densities;
PVector[][] velocities;

// App constants
int marginS = 5;
int marginM = 10;
int marginL = 20;

PImage sim;
int simScaling = 5;



void initSim() {
  initImage();
  initUnitVelocities();
  initDistributions();
}

// initialize image for displaying the snow simulation
void initImage() {
  sim = new PImage((width - (marginL * 2))/simScaling, ((height/2) - (marginL * 2))/simScaling);
  sim.loadPixels();
  for (int i = 0; i < sim.width; i++) {
    for (int j = 0; j < sim.height; j++) {
      int bright = (int)random(0, 255);
      sim.pixels[xywToI(i, j, sim.width)] = color(bright, bright, bright);
    }
  }
  sim.updatePixels();
}

// initialize unit velocities in the 9 grid directions
void initUnitVelocities() {
  unitVelocities = new PVector[9];
  unitVelocities[0] = new PVector(0, 0);
  unitVelocities[1] = new PVector(1, 0);
  unitVelocities[2] = new PVector(0, 1);
  unitVelocities[3] = new PVector(-1, 0);
  unitVelocities[4] = new PVector(0, -1);
  unitVelocities[5] = new PVector(1, 1);
  unitVelocities[6] = new PVector(-1, 1);
  unitVelocities[7] = new PVector(-1, -1);
  unitVelocities[8] = new PVector(1, -1);
}

// initialize the 2D array for the wind particle amounts
void initDistributions() {
  distributions = new float[sim.width][sim.height][9];
}
