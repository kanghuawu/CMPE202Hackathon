public class Button extends Leaf {
  private color background;
  protected String btnName;
  
  public Button(int xPos, int yPos, int xLen, int yLen, color c, String btnName) {
    super(xPos, yPos, xLen, yLen, c);
    this.background = c;
    this.btnName = btnName;
  }
  
  @Override
  public void setBackground() {
    fill(background); 
  }
  
  @Override
  public void clearBackground() {
    fill(255);
  }
  
  public void displayContent() {
    if (this.xPos <= mouseX && mouseX <= this.xPos + this.xLen && this.yPos <= mouseY && mouseY <= this.yPos + this.yLen) {
        fill(0);
        System.out.println(btnName);
    }
      
  }
}