public class Composite implements Component {
  public ArrayList<Component> components = new ArrayList<Component>();
  
  public void draw() {
    for (Component c: components) {
      c.draw(); //<>// //<>//
    }
  }
  
  public void addChild(Component c) {
    components.add(c);  //<>//
  }
  
  public void displayContent() {
    for (Component b: components) { //<>//
        b.displayContent();
      
    }
  }
}