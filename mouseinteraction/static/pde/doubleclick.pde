// Global variables
int press = 0;
int timeDown = 0;
int timeUp = 0;
int endFlag = 0;
int X, Y;
float smallRadius = 25.0;
int testNum = 0;
int canvasWidth = 940;
int canvasHeight = 470;
int offset = smallRadius / 2;

// Setup the Processing Canvas
void setup(){
  size( canvasWidth, canvasHeight );
  strokeWeight( 10 );
  frameRate( 15 );
  X = canvasWidth / 2;
  Y = canvasHeight / 2;
}

// Main draw loop
void draw(){

  background(255)
  // Set stroke-color gray
  stroke(150);

  fill(255, 255, 0);
  strokeWeight(3);
  ellipse( X, Y, smallRadius, smallRadius);
  text((str)pressDuration, X+40, Y+40)
}


// Set circle's next destination
int checkLocation(){
   if ((mouseX <= X+offset) && (mouseX >= X-offset)){
    if ((mouseY <= Y+offset) && (mouseY >= Y-offset)){
       return 1;
       }}
  return 0;
}

void mousePressed(){
    
    timeDown = millis();
    if (checkLocation()){
    press++;
    if (press == 2){
        pressDuration.push(timeDown-timeUp);
        }}   
}


void mouseReleased(){
    
    timeUp = millis();
    if (checkLocation()){
    if (press == 1){
        pressDuration.push(timeUp-timeDown);
        }
    if (press == 2){
        pressDuration.push(timeUp-timeDown);
        testNum++;
        if (testNum < 6){
            X = int(random(offset, canvasWidth-offset));
            Y = int(random(offset, canvasHeight-offset));
            press = 0;
            }
        }
    }
}
