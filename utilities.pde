void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode == ENTER) enterkey = true;

  if (keyCode == 'w' ||keyCode == 'W') wkey = true;
  if (keyCode == 'a'||keyCode == 'A') akey = true;
  if (keyCode == 's' ||keyCode == 'S') skey = true;
  if (keyCode == 'd' ||keyCode == 'D') dkey = true;
}


void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == ENTER) enterkey = false;

  if (keyCode == 'w' ||keyCode == 'W') wkey = false;
  if (keyCode == 'a'||keyCode == 'A') akey = false;
  if (keyCode == 's' ||keyCode == 'S') skey = false;
  if (keyCode == 'd'||keyCode == 'D') dkey = false;
}

PImage reverseImage( PImage image ) {
  PImage reverse;
  reverse = createImage(image.width, image.height, ARGB );

  for (int i=0; i < image.width; i++ ) {
    for (int j=0; j < image.height; j++) {
      int xPixel, yPixel;
      xPixel = image.width - 1 - i;
      yPixel = j;
      reverse.pixels[yPixel*image.width+xPixel]=image.pixels[j*image.width+i] ;
    }
  }
  return reverse;
}
