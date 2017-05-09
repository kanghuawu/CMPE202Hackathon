public class GasTypeButton extends Button {
  final private double PRICE_FOR_87_GAS = 3.05;
  final private double PRICE_FOR_89_GAS = 3.25;
  final private double PRICE_FOR_91_GAS = 3.35;
  public GasTypeButton(int xPos, int yPos, int xLen, int yLen, color c, String btnName) {
    super(xPos, yPos, xLen, yLen, c, btnName);
  }
  /* //<>//
   @Override
   public void draw() {
     setBackground(); //<>// //<>//
     stroke(borderColor);
     System.out.println("Gas Type button " + xPos + "," + yPos);
     rect(xPos, yPos, xLen, yLen);
     drawText();
     clearBackground();
  }*/
  /* //<>//
  public void drawText() {
    font = loadFont("BookAntiqua-48.vlw");
    textFont(font, 35);
    System.out.println("GasType button");
    fill(0);
    text(btnName, this.xPos + this.xLen/2 - textWidth(btnName)/2 , this.yPos + this.yLen/2 + 17.5);
    fill(255);
  }*/
  
  /*@Override
  public void setBackground() {
    fill(255); 
  }*/
  
  @Override
  public int getLabelSize() {
     return 35; 
  }
  
  public double getPrice() {
    if (btnName.equals("87")) {
       return PRICE_FOR_87_GAS;
    } else if (btnName.equals("89")) {
      return PRICE_FOR_89_GAS;
    } else {
      return PRICE_FOR_91_GAS;
    }
  }
}

public class FuelButton extends Button {
   public FuelButton(int xPos, int yPos, int xLen, int yLen, color c, String btnName) {
    super(xPos, yPos, xLen, yLen, c, btnName);
  }
  
  @Override
  public int getLabelSize() {
     return 25; 
  }
}