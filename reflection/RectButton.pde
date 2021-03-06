class RectButton extends Button {
  //properties for button text
  String label;
  float labelX;
  float labelY;
  
  //constructor
  RectButton(float tempX, float tempY, float tempW, float tempH, String tempLabel, float tempLabelX, float tempLabelY){
    super(tempX, tempY, tempW, tempH);
    label = tempLabel;
    labelX = tempLabelX;
    labelY = tempLabelY;
  }
  
  //draws a rectangle and writes the button name/label on it
  //will invert colour of button to show feedback to user when clicked on
  void drawButton(){
    //boolean checks if mouse is over button
    boolean isOnButton = mouseX > x-w/2 && mouseX < x+w/2
                         && mouseY > y-h/2 && mouseY < y+h/2;
    
    if(mousePressed && isOnButton){
      rectMode(CENTER);
      fill(255);
      stroke(255);
      rect(x, y, w, h, 5);
      fill(26);
      textSize(fontSize);
      text(label, x-labelX, y+labelY);
      fill(255);
    } else {
      rectMode(CENTER);
      noFill();
      stroke(255);
      rect(x, y, w, h, 5);
      fill(255);
      textSize(fontSize);
      text(label, x-labelX, y+labelY);
    }
  }
  
  //draws a rectangle and writes the button name/label on it
  //but it also takes a boolean to check if the button should show feedback
  //used on kg/lb & cm/ft buttons to show which is active
  //since the boolean to check if mouse has been released is in main processing file
  //to get mouse event to work
  void drawButton(boolean b){          
    if(b){
      rectMode(CENTER);
      fill(255);
      stroke(255);
      rect(x, y, w, h, 5);
      fill(26);
      textSize(fontSize);
      text(label, x-labelX, y+labelY);
      fill(255);
    } else {
      rectMode(CENTER);
      noFill();
      stroke(255);
      rect(x, y, w, h, 5);
      fill(255);
      textSize(fontSize);
      text(label, x-labelX, y+labelY);
    }
  }
}
