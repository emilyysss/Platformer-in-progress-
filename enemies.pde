class FGoomba extends FSuper {

  int direction = L;
  int speed = 50;
  int frame = 0;

  FGoomba(float x, float y) {
    super();
    setPosition(x, y);
    setName("goomba");
    setRotatable(false);
    setFillColor(color(255, 0, 0));  // remove later
   // attachImage(goomba[0]);
  }
  void act() {
    animate();
    collide();
    move();
  }


  void animate() {
    if (goomba == null || goomba.length == 0) return;

    if (frame >= goomba.length) frame = 0;

    if (frameCount % 5 == 0) {
      if (direction == R) attachImage(goomba[frame]);
      if (direction == L) attachImage(reverseImage(goomba[frame]));
      frame++;
    }
  }
  void collide() {
    if (isTouching("wall")) {
      direction *= -1;
      setPosition(getX() + direction, getY());
    }
    if (isTouching("player")) {
      if (player.getY() < getY()-gridSize/2) {
        world.remove(this);
        enemies.remove(this);
        println("hi");
      } else {
        player.setPosition(880, 0);
      }
    }
  }

  void move() {
    float vy = getVelocityY();
    setVelocity(speed*direction, vy);
  }
}//end of class
