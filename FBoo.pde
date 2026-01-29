class FBoo extends FSuper {

  int direction = L;
  int speed = 50;
  int frame = 0;

  FBoo(float x, float y) {
    super();
    setPosition(x, y);
    setName("boo");
    setRotatable(false);
  
  }
  void act() {
    animate();
    collide();

    if (player.direction != direction) move();
  }


  void animate() {
    if (boo == null || boo.length == 0) return;

    if (frame >= boo.length) frame = 0;

    if (frameCount % 5 == 0) {
      if (direction == R) attachImage(boo[frame]);
      if (direction == L) attachImage(reverseImage(boo[frame]));
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
