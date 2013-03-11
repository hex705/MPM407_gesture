/**
 * <p>Ketai Sensor Library for Android: http://KetaiProject.org</p>
 *
 * <p>Gesture template -- revised from original example by
 * <p> Daniel Sauter/j.duran</p>
 */


import android.view.MotionEvent;  
import ketai.ui.*;

KetaiGesture gesture;

// if using pinch or rotate -- need a couple of globals
float theSize = 10;
float theAngle = 0;

void setup()
{
  orientation(LANDSCAPE);
  gesture = new KetaiGesture(this);
  textSize(32);
 
}

void draw()
{
  background(128);
  delay(250);
}



public boolean surfaceTouchEvent(MotionEvent event) {
  println("touch event called");
  //call to keep mouseX, mouseY, etc updated
  super.surfaceTouchEvent(event);

  //forward event to class for processing
  return gesture.surfaceTouchEvent(event);
}


void showMe(int howLong){
  delay( howLong );
}
