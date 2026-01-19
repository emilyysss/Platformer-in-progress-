
void readmap(PImage img) {
  world = new FWorld(-2000, -2000, 2000, 2000);
  world.setGravity(0, 900);

  for (int y = 0; y < map.height; y++) {
    for (int x = 0; x < map.width; x++) {

      color c = map.get(x, y);
      color s = map.get(x, y + 1);
      color w = map.get(x - 1, y);
      color e = map.get(x + 1, y);
      color n = map.get(x, y-1);
     
      if (c == black && alpha(n) != 0) {
        FBox ground = new FBox(gridSize, gridSize);
        ground.setFillColor(black);
        ground.setPosition(x*gridSize, y*gridSize);
        ground.setStatic(true);
        ground.setFillColor(black);
        ground.setFriction(4);
        ground.setName("ground");
        world.add(ground);
      }
        if (c == black && alpha(n) == 0) {
        FBox ground = new FBox(gridSize, gridSize);
        ground.setFillColor(black);
        ground.setPosition(x*gridSize, y*gridSize);
        ground.setStatic(true);
        ground.attachImage(grassimage);
        ground.setFriction(4);
        ground.setName("ground");
        world.add(ground);
      }
      if (c == blue) {
        FBox ice = new FBox(gridSize, gridSize);
        ice.attachImage(iceimage);
        ice.setPosition(x*gridSize, y*gridSize);
        ice.setStatic(true);
        ice.setFriction(0);
        ice.setName("ice");
        world.add(ice);
      }

      if (c == green && s ==brown) {
        FBox leaf = new FBox(gridSize, gridSize);

        leaf.setPosition(x*gridSize, y*gridSize);
        leaf.setStatic(true);
        leaf.setFriction(0);
        leaf.attachImage(treeintersect);
        leaf.setName("intersect");
        world.add(leaf);
      }
      if (c== green && w == green && e == green) {//middle
        FBox leaf = new FBox(gridSize, gridSize);

        leaf.setPosition(x*gridSize, y*gridSize);
        leaf.setStatic(true);
        leaf.setFriction(0);
        leaf.attachImage(leafmiddle);
        leaf.setName("leafmiddle");
        world.add(leaf);
      }
      if (c== green && w != green) {//west
        FBox leaf = new FBox(gridSize, gridSize);

        leaf.setPosition(x*gridSize, y*gridSize);
        leaf.setStatic(true);
        leaf.setFriction(0);
        leaf.attachImage(leafwest);
        leaf.setName("leafwest");
        world.add(leaf);
      }

      if (c== green && e != green) {//east
        FBox leaf = new FBox(gridSize, gridSize);

        leaf.setPosition(x*gridSize, y*gridSize);
        leaf.setStatic(true);
        leaf.setFriction(0);
        leaf.attachImage(leafeast);
        leaf.setName("leafeast");
        world.add(leaf);
      }


      if (c == brown) {
        FBox trunk = new FBox(gridSize, gridSize);
        trunk.attachImage(treetrunk);
        trunk.setPosition(x*gridSize, y*gridSize);
        trunk.setStatic(true);
        trunk.setFriction(0);
        trunk.setName("trunk");
        trunk.setSensor(true);
        world.add(trunk);
      }

      if (c == pink) {
        FBox spike = new FBox(gridSize, gridSize);
        spike.attachImage(spikeimage);
        spike.setPosition(x*gridSize, y*gridSize);
        spike.setStatic(true);
        spike.setFriction(0);
        spike.setName("spike");
        world.add(spike);
      }

      if ( c == red) {
        FBridge br = new FBridge(x*gridSize, y*gridSize);
        terrain.add(br);
        world.add(br);
      }
      if ( c == teal) {
        FMushroom mu = new FMushroom(x*gridSize, y*gridSize);
        terrain.add(mu);
        world.add(mu);
      } 
      if (c == majenta) {
        FGoomba gmb = new FGoomba(x*gridSize, y*gridSize);
        enemies.add(gmb);
        world.add(gmb);
      }

      if (c== gray) {
        FBox ss = new FBox (gridSize, gridSize);
        ss.setFillColor(black);
        ss.setPosition(x*gridSize, y*gridSize);
        ss.setStatic(true);
        ss.attachImage(stoneimage);
        ss.setFriction(4);
        ss.setName("wall");
        world.add(ss);
      }
    }
  }
}


void drawWorld() {
  float zoom = 1.5;
  pushMatrix();
  translate(-player.getX()*zoom + width/2, -player.getY()*zoom+ height/2);
  scale(zoom);
  world.step();
  world.draw();
  popMatrix();
}

void loadplayer() {
  player = new FPlayer();
  world.add(player);
}
