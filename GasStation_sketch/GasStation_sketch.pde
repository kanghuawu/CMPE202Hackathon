color backgroundColor;
Component application;
PFont font;
GasStation gs = new GasStation();

void setup() {
  size(1200, 700);
  
  //font = loadFont("BookAntiqua-48.vlw");
  //textFont(font, 50);
   //<>// //<>// //<>//
  backgroundColor =  color(255);
  application = new Composite();
  Frame applicationFrame =  new Frame(new Leaf(50, 50, 1100, 600, 0));
  Frame instructionFrame = new Frame(new Leaf(100, 75, 650, 300, 0));
  Frame displayFrame = new Frame(new Leaf (800, 75, 300, 300, 0));
  Frame fuelFrame = new Frame(new Leaf(100, 400, 650, 225, 0));
  Frame opFrame = new Frame(new Leaf(800, 400, 300, 225, 0));
  application.addChild(applicationFrame);
  
  // Instruction Frame
  application.addChild(instructionFrame);
  
  // Add all the buttions for instruction frame
   // Add acreen for instruction
  Screen insScreen = new Screen(220, 100, 400, 250, 0);
  instructionFrame.addChild(insScreen);
  
  Button btn1 = new Button(130, 110, 60, 40, 0, "Button 1");
  btn1.setScreen(insScreen);
  instructionFrame.addChild(btn1);
  Button btn2 = new Button(130, 170, 60, 40, 0, "Button 2");
  btn2.setScreen(insScreen);
  instructionFrame.addChild(btn2);
  Button btn3 = new Button(130, 230, 60, 40, 40, "Button 3");
  btn3.setScreen(insScreen);
  instructionFrame.addChild(btn3);
  Button btn4 = new Button(130, 290, 60, 40, 0, "Button 4");
  btn4.setScreen(insScreen);
  instructionFrame.addChild(btn4);
  Button btn5 = new Button(660, 110, 60, 40, 0, "Button 5");
  btn5.setScreen(insScreen);
  instructionFrame.addChild(btn5);
  Button btn6 = new Button(660, 170, 60, 40, 0, "Receipt");
  btn6.setScreen(insScreen);
  instructionFrame.addChild(btn6);
  Button btn7 = new Button(660, 230, 60, 40, 40, "Cancel");
  btn7.setScreen(insScreen);
  instructionFrame.addChild(btn7);
  Button btn8 = new Button(660, 290, 60, 40, 0, "Done");
  btn8.setScreen(insScreen);
  instructionFrame.addChild(btn8);
  
  application.addChild(fuelFrame);
  GasTypeButton gas87 = new GasTypeButton(140, 450, 150, 150, 0, "87");
  gas87.setScreen(insScreen);
  fuelFrame.addChild(gas87);
  GasTypeButton gas89 = new GasTypeButton(340, 450, 150, 150, 0, "89");
  gas89.setScreen(insScreen);
  fuelFrame.addChild(gas89);
  GasTypeButton gas91 = new GasTypeButton(540, 450, 150, 150, 0, "91");
  gas91.setScreen(insScreen);
  fuelFrame.addChild(gas91);
  
  application.addChild(displayFrame);
      
  int xPos = 725;    
  int yPos = 30;    
  for (int i = 1; i <= 9; i++) {    
    if (i % 3 == 1) {    
      xPos = 725;    
      yPos += 65;    
    }    
    xPos += 100;    
    NumPadButton numBtn = new NumPadButton(xPos,yPos,50,50,0, Integer.toString(i));    
    numBtn.setScreen(insScreen);
    displayFrame.addChild(numBtn);    
    }    
  NumPadButton zero = new NumPadButton(925,yPos +65 ,50,50,0, "0");    
  zero.setScreen(insScreen);
  displayFrame.addChild(zero);
  
  FuelButton start = new FuelButton(830, 470, 100, 100, 0, "Start");
  start.setScreen(insScreen);
  opFrame.addChild(start);
  FuelButton stop = new FuelButton(960, 470, 100, 100, 0, "Stop");
  stop.setScreen(insScreen);
  opFrame.addChild(stop);
  application.addChild(opFrame);
  
  //noLoop();
}

void draw() {
  fill(255);
  background(255);
  application.draw(); //<>// //<>// //<>//
  application.isMouseOver();
  
  
}

void mousePressed() {
  //redraw(); //<>//
  //loop();
 
  //fill(255); //<>//
  application.invoke(); //<>// //<>//
  //application.invoke(gs.getCurrentState());

}
//public class Button extends Leaf {
//  protected String btnName;
//  private Screen screen;
//  int count = 0;
  
//  public Button(int xPos, int yPos, int xLen, int yLen, color c, String btnName) {
//    super(xPos, yPos, xLen, yLen, c);
//    this.btnName = btnName;
//  }
  
//  public void setScreen(Screen screen) {
//    this.screen = screen;
//  }
  
//  /*@Override
//  public void draw() {
//     setBackground(); //<>// //<>//
//     stroke(0);
//     rect(xPos, yPos, xLen, yLen);
//     clearBackground();
//     drawText();
     
//  }*/
  
  
//  public void drawText() {
//    font = loadFont("BookAntiqua-48.vlw");
//    textFont(font, getLabelSize());
//    fill(0);
//    text(btnName, this.xPos + this.xLen/2 - textWidth(btnName)/2 , this.yPos + this.yLen/2 + getLabelSize()/2);
//    fill(255);
//  }
  
//  @Override
//  public void setBackground() {
//    fill(255); 
//  }
  
  
  
//  @Override
//  public void clearBackground() {
//    fill(255);
//  }
  
//  public void invoke() {
//    if (this.xPos <= mouseX && mouseX <= this.xPos + this.xLen && this.yPos <= mouseY && mouseY <= this.yPos + this.yLen) {
//        fill(0);
//        //System.out.println(btnName);
//        if (btnName.equals("Start")) {
//          screen.showText(str(count));
//          ++count;
//        } else {
//          screen.showText(btnName);
//        }
//        //currentState.invoke();
//        switch(btnName){
//          case "Button 1":
//            gs.buttom1();
//            break;
//          case "Button 2":
//            gs.buttom1();
//            break;
//          case "Button 3":
//            gs.buttom1();
//            break;
//          case "Button 4":
//            gs.buttom1();
//            break;
//        }
//    } 
//  }
  
//  public int getLabelSize() {
//     return 10; 
//  }
  
//  /*public void isMouseOver() {
//    if (this.xPos <= mouseX && mouseX <= this.xPos + this.xLen && this.yPos <= mouseY && mouseY <= this.yPos + this.yLen && btnName.equals("Start")) {
//        fill(0);
//        //System.out.println(btnName);
//        screen.showText(str(count));
//        count++;
//    }
//  }*/
//}