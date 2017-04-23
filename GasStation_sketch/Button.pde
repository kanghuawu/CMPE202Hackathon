public class Button extends Leaf {
  protected String btnName;
  private Screen screen;
  
  public Button(int xPos, int yPos, int xLen, int yLen, color c, String btnName) {
    super(xPos, yPos, xLen, yLen, c);
    this.btnName = btnName;
  }
  
  public void setScreen(Screen screen) {
    this.screen = screen;
  }
  
  
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
        System.out.println(btnName);
        screen.showText(btnName);
        //currentState.invoke();
    } 
  }
  
  public int getLabelSize() {
     return 10; 
  }
}