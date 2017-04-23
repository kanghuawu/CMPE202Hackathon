public class Screen extends Leaf {
  private String msg ;
  public Screen(int xPos, int yPos, int xLen, int yLen, color c) {
    super(xPos, yPos, xLen, yLen, c);
  }
  
  public void showText(String displayMsg) {
    System.out.println(displayMsg +  " is clicked");
    font = loadFont("BookAntiqua-48.vlw");
    textFont(font, 12);
    fill(0);
    text(displayMsg + " is Click", this.xPos + 10 , this.yPos + 15);
    fill(255);
    noLoop();
    
  }
  /*
  public void drawText() {
    font = loadFont("BookAntiqua-48.vlw");
    textFont(font, 12);
    fill(0);
    text("Message is displayed", this.xPos + 10 , this.yPos + 10);
    fill(255);
  }*/
  
  
  
}