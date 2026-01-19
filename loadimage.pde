void loadimages() {
  map = loadImage("newfeaturemap.png");
  
  

  iceimage = loadImage("ice.png");
  iceimage.resize(gridSize, gridSize);

  stoneimage = loadImage("brick.png");
  stoneimage.resize(gridSize, gridSize);

  treetrunk = loadImage("trunk.png");
  treetrunk.resize(gridSize, gridSize);

  treeintersect = loadImage("tree_intersect.png");
  treeintersect.resize(gridSize, gridSize);

  leafmiddle = loadImage("treetop_center.png");
  leafmiddle.resize(gridSize, gridSize);

  leafeast = loadImage("treetop_e.png");
  leafeast.resize(gridSize, gridSize);

  leafwest = loadImage("treetop_w.png");
  leafwest.resize(gridSize, gridSize);

  spikeimage = loadImage("spike.png");
  spikeimage.resize(gridSize, gridSize);

  bridgeimage = loadImage("bridge.png");
  bridgeimage.resize(gridSize, gridSize);

  grassimage = loadImage("grass.png");
  grassimage.resize(gridSize, gridSize);
  
  mushroomimage = loadImage("mushroom.png");
  mushroomimage.resize(gridSize, gridSize);

  bg = loadImage("bkg.png");
  

  idle = new PImage[2];
  idle[0] = loadImage("idle0.png");
  idle[1] = loadImage("idle1.png");

  jump = new PImage[1];
  jump[0] = loadImage("jump0.png");

  run = new PImage[3];
  run[0] = loadImage("runright0.png");
  run[1] = loadImage("runright1.png");
  run[2] = loadImage("runright2.png");

  action = idle;

  goomba = new PImage[2];
  goomba[0]= loadImage("goomba0.png");
  goomba[0].resize(gridSize, gridSize);
  goomba[1] = loadImage("goomba1.png");
  goomba[1].resize(gridSize, gridSize);
}
