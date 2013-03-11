void onDoubleTap(float x, float y)
{
  text("DOUBLE", x, y);
  showMe(500);
  
}

void onTap(float x, float y)
{
  text("SINGLE", x, y);
  showMe(500);
}

void onLongPress(float x, float y)
{
  text("LONG", x, y);
   showMe(500);
}

//the coordinates of the start of the gesture, 
//     end of gesture and velocity in pixels/sec
void onFlick( float x, float y, float px, float py, float v)
{
  text("FLICK: "+v, x, y);
  line(x,y,px,py);
   showMe(500);
}

void onPinch(float x, float y, float d)
{
  theSize = constrain(theSize+d, 10, 2000); // make sure it stay on screen 
}

void onRotate(float x, float y, float ang)
{
  theAngle += ang;
}

//these still work if we forward MotionEvents below
void mouseDragged()
{
  println("dragging");
}

void mousePressed()
{
    println("pressing");
}


