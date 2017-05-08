public class Leaf implements Component {
  protected int xPos, yPos;
  protected int xLen, yLen;
  protected color borderColor;
  
  public Leaf(int xPos, int yPos, int xLen, int yLen, color c) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.xLen = xLen;
    this.yLen = yLen;
    this.borderColor = c;
  }
  
  public void draw() {
     setBackground(); //<>// //<>// //<>// //<>// //<>//
     stroke(borderColor);
     rect(xPos, yPos, xLen, yLen);
     drawText();
     clearBackground();
  }
  
  public void setBackground() {};
  public void clearBackground() {};
  public void drawText() {}
  
  public void addChild(Component c) {}
  public void invoke() {}
  public void isMouseOver(){}
}