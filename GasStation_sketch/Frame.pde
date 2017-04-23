public class Frame extends Composite {
  /*protected int xPos, yPos;
  protected int xLen, yLen;
  private color borderColor;*/
  
  Leaf frame;
  public Frame(Leaf l) {
     this.frame = l; 
  }
  
  public void draw() {
    frame.draw();
    for (Component c: components) {
        System.out.println(c.getClass().getName()); //<>// //<>//
        c.draw();
    }
  }
  
  
  //public Frame(int xPos, int yPos, int xLen, int yLen, color c) {
     /*this.xPos = xPos;
    this.yPos = yPos;
    this.xLen = xLen;
    this.yLen = yLen;
    this.borderColor = c;
    */
    //super(xPos, yPos, xLen, yLen, c);
  //}
  
  /*
  public void draw() {
     this.setBackground();
     stroke(borderColor);
     rect(xPos, yPos, xLen, yLen);
     for (Component c: components) {
       c.draw();
       if (c instanceof Button) {
          Button b = (Button) c; //<>// //<>//
          if (b.btnName.equals("87") || b.btnName.equals("89") || b.btnName.equals("91")) {
            fill(255);  
            text(b.btnName, b.xPos +  (b.xPos + b.xLen)/2, b.yPos +(b.yPos+b.yLen)/2);
            //fill(0);
          }
          fill(255); 
       }
     }
  }
  
  public void setBackground() {};
  */
  public void invoke() {
     //fill(255);
    //System.out.println("Frame " + xPos + "," + "," + yPos);
    for (Component c: components) {
      c.invoke();
    }
  }
  
}