public class Button extends Leaf {
  protected String btnName;
  private Screen screen;
  int count = 0;
  double price = 0;
  
  public Button(int xPos, int yPos, int xLen, int yLen, color c, String btnName) {
    super(xPos, yPos, xLen, yLen, c);
    this.btnName = btnName;
  }
  
  public void setScreen(Screen screen) {
    this.screen = screen;
  }
  
  /*@Override
  public void draw() {
     setBackground(); //<>// //<>//
     stroke(0);
     rect(xPos, yPos, xLen, yLen);
     clearBackground();
     drawText();
     
  }*/
  
  
  public void drawText() {
    font = loadFont("BookAntiqua-48.vlw");
    textFont(font, getLabelSize());
    fill(0);
    text(btnName, this.xPos + this.xLen/2 - textWidth(btnName)/2 , this.yPos + this.yLen/2 + getLabelSize()/2);
    fill(255);
  }
  
  @Override
  public void setBackground() {
    fill(255); 
  }
  
  
  
  @Override
  public void clearBackground() {
    fill(255);
  }
  
  public void invoke() {
    if (this.xPos <= mouseX && mouseX <= this.xPos + this.xLen && this.yPos <= mouseY && mouseY <= this.yPos + this.yLen) {
        fill(0);
        //System.out.println(btnName);
        //if (btnName.equals("Start")) {
          //screen.showText(str(count));
          //++count;
        //} else {
          screen.showText(btnName);
        //}
        //currentState.invoke();
    } 
  }
  
  public int getLabelSize() {
     return 10; 
  }
  
  public void isMouseOver() {
    if (this.xPos <= mouseX && mouseX <= this.xPos + this.xLen && this.yPos <= mouseY && mouseY <= this.yPos + this.yLen && btnName.equals("Start")) {
        fill(0);
        //System.out.println(btnName);
        price = count*2.45;
        StringBuilder sb = new StringBuilder();
        sb.append("Gallons: ").append(count).append("\n");
        sb.append("Price: " ).append(price).append("\n");
        screen.showText(sb.toString());
        
        //screen.showText(String.valueOf(price), this.xPos, this.yPos + 50);
        count++;
    } else {
      count = 0;
      price = 0;
    }
  }
}