color backgroundColor;
Component application;
PFont font;

void setup() {
  size(1200, 700);
  
  //font = loadFont("BookAntiqua-48.vlw");
  //textFont(font, 50);
  
  backgroundColor =  color(255); //<>//
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
  
  Button btn1 = new Button(130, 110, 40, 40, 0, "Button 1");
  instructionFrame.addChild(btn1);
  Button btn2 = new Button(130, 170, 40, 40, 0, "Button 2");
  instructionFrame.addChild(btn2);
  Button btn3 = new Button(130, 230, 40, 40, 40, "Button 3");
  instructionFrame.addChild(btn3);
  Button btn4 = new Button(130, 290, 40, 40, 0, "Button 4");
  instructionFrame.addChild(btn4);
  Button btn5 = new Button(640, 110, 40, 40, 0, "Button 5");
  instructionFrame.addChild(btn5);
  Button btn6 = new Button(640, 170, 40, 40, 0, "Button 6");
  instructionFrame.addChild(btn6);
  Button btn7 = new Button(640, 230, 40, 40, 40, "Button 7");
  instructionFrame.addChild(btn7);
  Button btn8 = new Button(640, 290, 40, 40, 0, "Button 8");
  instructionFrame.addChild(btn8);
  
  // Add acreen for instruction
  Screen insScreen = new Screen(200, 100, 400, 250, 0);
  instructionFrame.addChild(insScreen);
  
  
  
  application.addChild(fuelFrame);
  GasTypeButton gas87 = new GasTypeButton(140, 450, 150, 150, 0, "87");
  fuelFrame.addChild(gas87);
  GasTypeButton gas89 = new GasTypeButton(340, 450, 150, 150, 0, "89");
  fuelFrame.addChild(gas89);
  GasTypeButton gas91 = new GasTypeButton(540, 450, 150, 150, 0, "91");
  fuelFrame.addChild(gas91);
  
  application.addChild(displayFrame);
  application.addChild(opFrame);
  noLoop();
}

void draw() {
  background(backgroundColor);
  application.draw();  //<>//
}

void mousePressed() {
  application.displayContent(); //<>//
}