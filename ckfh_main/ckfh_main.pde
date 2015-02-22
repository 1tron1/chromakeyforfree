import processing.video.*;
 
color pink = color(255, 102, 204,0);
color black= color(255,255,255);

Capture kam;
 
void  setup  () {
  size (320, 240);

  kam= new Capture(this, 320, 240, 30);
  kam.start();
}
 
void  draw  () {
  background (255);// make this an image
 
   
  if (kam.available ()) {
    kam.read ();
  }
 
  for (int i=0; i < width; i++) {
    for (int j=0; j < height; j++) {
     
      // Read the color value for each pixel from
      color  k = kam. get  (i, j);
       
      stroke (k);
       point (i, j);
      if (k==black) { // list as many colors as you need
   stroke (pink);
       point (i, j);
      }
    }
  }
}
