class FSuper extends FBox {
  final int L = -1;
  final int R = 1;
  int direction;

  FSuper() {
    super(gridSize, gridSize);
  }

 boolean isTouching(String obj) {
  ArrayList<FContact> contacts = getContacts(); 
  for (int i = 0; i < contacts.size(); i++) {
    FContact fc = contacts.get(i);
    if (fc.contains(obj)) {
      return true;
    }
  }
  return false;
}


  void act() {
  }
}
