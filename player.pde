class FPlayer extends FSuper {
  int frame;
  int jumpcount;
  int maxjumps;
  int jumptimer;
  boolean doublejump;



  FPlayer() {
    super();
    frame = 0;
    direction = R;
    setPosition(90, 708);
    setFillColor(pink);
    setRotatable(false);
    jumpcount = 0;
    maxjumps = 1;
    jumptimer = 100;
    setName("player");
  }

  void act() {
    jumptimer--;
    handleimput();
    if (isTouching("spike")) {
      setPosition(0, 0);
    }

    animate();
  }

  void handleimput() {
    if ( player.getVelocityY()== 0) {
      action = idle;
    }
    if (akey) {
      setVelocity(-400, getVelocityY());
      action = run;
      direction = L;
    }
    if (dkey) {
      setVelocity(400, getVelocityY());
      action = run;
      direction = R;
    }
    if (abs(getVelocityY()) > 0.1) action = jump;


    ArrayList<FContact> contacts = player.getContacts();
    if (wkey && contacts.size() > 0 || maxjumps > jumpcount) {
      jumpcount ++;
      player.setVelocity(player.getVelocityX(), -400);
      
    }
    if (contacts.size() >0) {
      jumpcount = 0;
    }
  }




void animate() {
  if (frame>= action.length) frame = 0;
  if (frameCount % 5 ==0) {
    if (direction == R)attachImage(action[frame]);
    if (direction == L) attachImage(reverseImage(action[frame]));
    frame++;
  }
}
d
}//end of class
