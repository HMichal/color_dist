/*

 This program was written by Michal Huller
 started on on 12 Mar 2020
 Change colors by Steiner colors theory
 Instead of distance, change bright to Red and Dark to Blue
 */

import javax.swing.*;
import java.util.Calendar;

JFileChooser fc;

color bg = #f3f0d0;
boolean trans = false;
PGraphics newG;

PImage origCopy;

void setup() {

  colorMode(RGB);
  //size(orig.width, orig.height);
  //colorMode(HSB, 360, 100, 100);
  size(800, 800);

  smooth();
  noLoop();
  fc = new JFileChooser("/home/michal/Pictures");
  if (openFileAndGetImage() == 0)
    exit();
}

//********************* draw *******************
void draw() {
  int transValue;
  background(bg);
  //if (trans)
    image(origCopy, 0, 0);
  origCopy.loadPixels();
  original.loadPixels();
  for (int ix=0; ix < original.height * original.width; ix++) {
    
    if (trans)
      transValue = 255;
    else
      transValue = min(255, 4*GetBlue(origCopy.pixels[ix]));
    original.pixels[ix] = color(GetRGBColor(origCopy.pixels[ix], transValue));
     // original.pixels[ix] = GetHSBColor(origCopy.pixels[ix]);
  }
  original.updatePixels();
  image(original, 0, 0);
}

void keyReleased() {


  if (key == 'p' || key == 'P' || key == 's' || key == 'S') {
     newG = createGraphics(origCopy.width, origCopy.height);
     newG.beginDraw();
     newG.background(bg);
     newG.image(origCopy, 0, 0);
     newG.image(original, 0, 0);
     newG.endDraw();
    newG.save("snapshots/pic_"+ year() + month() + day() + int(random(4000, 10000)) + ".png");
  }
  if (key == 'o' || key =='O') {
    if (openFileAndGetImage() == 0)
      exit();
    redraw();
  }
  if (key == 't' || key =='T') {
    trans = !trans;
    redraw();
  }
}
