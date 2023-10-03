int sum = 0;
int r = 0;
int g = 0;
int b = 0;
void setup()
{
  noLoop();
  size(500,600);
}
void draw()
{
  fill(r,g,b);
  rect(0,0,500,600,10);
  for (int i = 50; i <= 400; i+= 50){
    for (int j = 50; j <= 400; j+=50){
      Die bob = new Die(i,j);
      bob.roll();
      bob.show();
  }
  }
  fill(255,255,255);
  textSize(30);
  text("Sum: ", 150, 525);
  text(sum, 250, 525);


}
void mousePressed()
{
  redraw();
  sum = 0;
  r = (int)(Math.random()*255);
  g = (int)(Math.random()*255);
  b = (int)(Math.random()*255);

}
class Die //models one single dice cube
{
  int myX, myY, diceRoll;
  boolean one, two, three, four, five, six;
 
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    diceRoll = (int)(Math.random()*6)+1;
    one = false;
    two = false;
    three = false;
    four = false;
    five = false;
    six = false;
  }
  void roll()
  {
    if (diceRoll == 1){
      one = true;
      sum = sum + 1;
    }
    else if (diceRoll == 2){
      two = true;
      sum = sum + 2;
    }
    else if (diceRoll == 3){
      three = true;
      sum = sum + 3;
    }
    else if (diceRoll == 4){
      four = true;
      sum = sum + 4;
    }
    else if (diceRoll == 5){
      five = true;
      sum = sum + 5;
    }
    else{
      six = true;
      sum = sum + 6;
    }
  //System.out.println(one);
  }
  void show()
  {
    stroke(0,0,0);
    fill(255,255,255);
    rect(myX, myY, 50, 50, 15);
    if (one == true){
      fill(0,0,0);
      ellipse(myX + 25, myY+25, 15,15);
    }
    else if (two == true){
      fill(0,0,0);
      ellipse(myX + 75.0/2, myY+25.0/2, 25.0/2,25.0/2);
      ellipse(myX + 25.0/2, myY+75.0/2, 25.0/2,25.0/2);

    }
    else if (three == true){
      fill(0,0,0);
      ellipse(myX + 75.0/2, myY+25.0/2, 25.0/2,25.0/2);
      ellipse(myX + 25.0/2, myY+75.0/2, 25.0/2,25.0/2);
      ellipse(myX + 50.0/2, myY+50.0/2, 25.0/2,25.0/2);

    }
    else if (four == true){
      fill(0,0,0);
      ellipse(myX + 75.0/2, myY+25.0/2, 25.0/2,25.0/2);
      ellipse(myX + 25.0/2, myY+75.0/2, 25.0/2,25.0/2);
      ellipse(myX + 25.0/2, myY+25.0/2, 25.0/2,25.0/2);
      ellipse(myX + 75.0/2, myY+75.0/2, 25.0/2,25.0/2);

    }
    else if (five == true){
      fill(0,0,0);
      ellipse(myX + 75.0/2, myY+25.0/2, 25.0/2,25.0/2);
      ellipse(myX + 25.0/2, myY+75.0/2, 25.0/2,25.0/2);
      ellipse(myX + 50.0/2, myY+50.0/2, 25.0/2,25.0/2);
      ellipse(myX + 25.0/2, myY+25.0/2, 25.0/2,25.0/2);
      ellipse(myX + 75.0/2, myY+75.0/2, 25.0/2,25.0/2);

    }
    else{
      fill(0,0,0);
      ellipse(myX + 75.0/2, myY+25.0/2, 25.0/2,25.0/2);
      ellipse(myX + 25.0/2, myY+75.0/2, 25.0/2,25.0/2);
      ellipse(myX + 25.0/2, myY+25.0/2, 25.0/2,25.0/2);
      ellipse(myX + 75.0/2, myY+75.0/2, 25.0/2,25.0/2);
      ellipse(myX + 75.0/2, myY+50.0/2, 25.0/2,25.0/2);
      ellipse(myX + 25.0/2, myY+50.0/2, 25.0/2,25.0/2);

    }
  }
}
