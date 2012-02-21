// Global variables
float bigRadius = 50.0;
float smallRadius = 25.0;
int X, Y;
int nX, nY;
int delay = 16;
int testCase = 0;
int followFlag = 0;

// Setup the Processing Canvas
void setup(){
  size( 940, 470 );
  strokeWeight( 10 );
  frameRate( 15 );
  X = width / 2;
  Y = height / 2;
  nX = X;
  nY = Y;
}

// Main draw loop
void draw(){

  radius = radius + sin( frameCount / 4 );

  // Track circle to new destination
  X+=(nX-X)/delay;
  Y+=(nY-Y)/delay;

  // Fill canvas white
  background( 255 );


  // Set fill-color to blue
  fill( 0, 121, 184 );
  strokeWeight(10)

  // Set stroke-color gray
  stroke(150);

  // Draw circle
  ellipse( X, Y, radius, radius );

  fill(255, 255, 0);
  strokeWeight(3);
  ellipse( X+40, Y+40, radius/2, radius/2);

}


// Set circle's next destination
void mouseMoved(){
  nX = mouseX;
  nY = mouseY;
  mX.push(mouseX);
  $.print((str)mX.length, "html");
}
