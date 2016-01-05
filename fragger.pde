import processing.video.*;
import javax.swing.JFileChooser;
Movie move;
int a=0;
int b=0;
void setup() {
  size(200, 200);
  background(0);

}
void keyPressed(){
  if(key == ENTER)
 {
 JFileChooser chooser = new JFileChooser();
int returnVal = chooser.showOpenDialog(null);




   move= new Movie(this, chooser.getSelectedFile().getName());
   move.loop();
   int b=1;
 }
}
void draw() {
  if(b==1){
  image(move, 0, 0);
  }
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
  save(a+".png");
  a=a+1;
}
