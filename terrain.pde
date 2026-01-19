class FBridge extends FSuper {

  FBridge(float x, float y) {
    super();
    setStatic(true);
    setPosition(x, y);
    setName("bridge");
    setFillColor(red);
    attachImage(bridgeimage);
  }

  void act() {
    if (isTouching("brick")) {
      println("hi");
      setStatic(false);
      setSensor(true);
    }
  }
}//end of bridge
