color backgroundColor;
Component application;
PFont font;
//GasStattion gs = new GasStation();

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
  
  Button btn1 = new Button(130, 110, 60, 40, 0, "Debit Card");
  btn1.setScreen(insScreen);
  instructionFrame.addChild(btn1);
  Button btn2 = new Button(130, 170, 60, 40, 0, "Credit Card");
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
 
  //fill(255);
  application.invoke(); //<>// //<>//
  //application.invoke(gs.getCurrentState());
  application.invoke();
}

  