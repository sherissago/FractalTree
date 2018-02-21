private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = 0.5;  
public void setup() 
{   
  size(640, 480);    
  noLoop();
} 
public void draw() 
{   
  background(217, 179, 255);    
  stroke(97,69,11);
  line(320, 480, 320, 380); 
  line(320, 480, 320, 380); 
  stroke(62, 110, 39); 
  drawBranches(320,380,100,3*Math.PI/2);  
  
  
} 
public void drawBranches(int x, int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle-0.2;
  double angle2 = angle - branchAngle-0.3;
  branchLength *= fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y );
  int endX2 = (int)(branchLength*Math.cos(angle1) + x);
  int endY2 = (int)(branchLength*Math.sin(angle1) + y );
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  
  if(branchLength > smallestBranch)
  {
    drawBranches(endX1,endY1,branchLength,angle1);
    drawBranches(endX2,endY2,branchLength,angle2);
  }
  
} 
