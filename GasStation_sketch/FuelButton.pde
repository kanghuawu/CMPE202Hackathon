public class FuelButton extends Button {
   public FuelButton(int xPos, int yPos, int xLen, int yLen, color c, String btnName) {
    super(xPos, yPos, xLen, yLen, c, btnName);
  }
  
  @Override
  public int getLabelSize() {
     return 25; 
  }
}