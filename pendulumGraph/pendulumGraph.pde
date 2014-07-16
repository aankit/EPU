// Developed by Kim Ash, Donghong Donghong Sun, and 
// Matthew Turner on Dec 8,  2013 at STEMteachersNYC Workshop.
// graphing potential and kinetic energy of a pendulum

Pendulum p;  //adds a pendulum object to the program
float kinetic, potential, total;

void setup()
{
  size(800, 400);
  smooth();  //smooths lines
  
  p = new Pendulum(new PVector(width/2,0),155);  //initiate pendulum object at specified location
}

void draw()
{
  background(255);
  line(0, 200, 800, 200);
  p.go(); 
  
  //calculating energy values
  kinetic = sq(p.r*p.aVelocity);
  potential = 155-p.location.y;
  
  //potential energy graph
  fill(0, 0, 255);  //text color
  text("potential", potential + 5, 255);
  fill(255, 0, 0);
  rect(0, 225, potential, 50);
  //println(potential);
  
  //kinetic energy graph
  fill(0, 0, 255);  //text color
  text("kinetic", kinetic + 5, 355);
  fill(255, 255, 0);
  rect(0, 325, kinetic, 50);
  //println(kinetic);
}

void mousePressed() {
  p.clicked(mouseX,mouseY);
}

void mouseReleased() {
  p.stopDragging();
}
