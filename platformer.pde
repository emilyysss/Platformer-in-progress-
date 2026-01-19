

import fisica.*;
import java.util.ArrayList;

color black = #000000;
color blue = #4d6df3;
color brown = #9c5a3c;
color green = #22b14c;
color white = #FFFFFF;
color gray = #464646;


//danger
color pink = #ffa3b1;
color red = #ed1c24;
color majenta = #990030;//goomba
color yellow = #fff200; //boo

//friendly mobs
color purple = #6f3198;//


color teal = #99d9ea; //mushroom



//player
FPlayer player;

//movement
boolean upkey, downkey, leftkey, rightkey, enterkey;
boolean wkey, akey, skey, dkey;

//terrain
PImage map;
PImage iceimage, stoneimage, grassimage;
PImage treetrunk, treeend, treeintersect, leafmiddle, leafwest, leafeast;
PImage spikeimage, bridgeimage, mushroomimage;

PImage bg;

//character animatuons
PImage [] idle;
PImage [] jump;
PImage [] run;
PImage [] action;

PImage []goomba;

int x = 0;
int y = 0;
int gridSize = 22;

ArrayList<FBox> boxes = new ArrayList<FBox>();
FWorld world;


ArrayList <FSuper> terrain;
ArrayList <FSuper>enemies;




void setup() {
  size(800, 600);


  Fisica.init(this);
  terrain = new ArrayList<FSuper>();
  enemies = new ArrayList<FSuper>();

  loadimages();


  readmap(map);
  loadplayer();
}//end of setup

void draw() {
  //background(bg);

  background(255);
  //println("image: ", bg.width, bg.height);
  //println("screen:", width, height);
  println("jumptimer  ", player.jumptimer);
  println("jumpcount  ", player.jumpcount);
  println("maxjumps  ", player.maxjumps);
  drawWorld();
  actWorld();
}


void actWorld() {
  player.act();

  for (int i =0; i < terrain.size(); i++) {
    FSuper obj = terrain.get(i);
    obj.act();
  }
  for (int i =0; i < enemies.size(); i++) {
    FSuper obj = enemies.get(i);
    obj.act();
  }
}
