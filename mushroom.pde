class FMushroom extends FSuper {





  FMushroom(float x, float y) {
    super();
    setStatic(true);
    setPosition(x, y);
    setName("mushroom");
    setFillColor(red);
    attachImage(mushroomimage);
  }


  void act() {
    bounce();
  }

  void bounce() {
    if (isTouching("player")) {
      if (player.getY() < getY()-gridSize/2) {
        setRestitution(1.5);
        player.setVelocity(player.getVelocityX(), -500);
        player.maxjumps = 2;
      } else {
        player.maxjumps = 1;
      }
    }
  }
}
