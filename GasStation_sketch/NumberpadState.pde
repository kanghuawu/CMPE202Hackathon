// Derrick
public interface NumberpadState {

  public void insertDigit();
  public void backspace();
  public void enter();
  public String getRemainDigits();
}

public class NoPin implements NumberpadState{
   NumberPad numPad;
   
   public NoPin(NumberPad n) {
     this.numPad = n;
   }
   public void insertDigit() {
     numPad.setState(numPad.getOnePinState());
   }
   public void backspace() {
       System.out.println("Enter a number");
   }
   public void enter() {
     System.out.println("Not enough number");
   }
   public String getRemainDigits(){
     if(numPad.card.equalsIgnoreCase("debit")){
       return "4";
     }else{
       return "5";
     }
   }
}

public class OnePin implements NumberpadState{
   NumberPad numPad;
   
   public OnePin(NumberPad n) {
     this.numPad = n;
   }
   public void insertDigit() {
     numPad.setState(numPad.getTwoPinState());
   }
   public void backspace() {
      numPad.setState(numPad.getNoPinState());
   }
   
   public void enter() {
     System.out.println("Not enough number");
   }
   public String getRemainDigits(){
     if(numPad.card.equalsIgnoreCase("debit")){
       return "3";
     }else{
       return "4";
     }
   }
}

public class TwoPin implements NumberpadState{
   NumberPad numPad;
   
   public TwoPin(NumberPad n) {
     this.numPad = n;
   }
   public void insertDigit() {
     numPad.setState(numPad.getThreePinState());
   }
   public void backspace() {
      numPad.setState(numPad.getOnePinState());
   }
   public void enter() {
     System.out.println("Not enough number");
   }
   public String getRemainDigits(){
     if(numPad.card.equalsIgnoreCase("debit")){
       return "2";
     }else{
       return "3";
     }
   }
}

public class ThreePin implements NumberpadState{
   NumberPad numPad;
   
   public ThreePin(NumberPad n) {
     this.numPad = n;
   }
   public void insertDigit() {
     if (numPad.checkDebit())
       numPad.setDone(true);
     numPad.setState(numPad.getFourPinState());
   }
   public void backspace() {
      numPad.setState(numPad.getTwoPinState());
   }
   
   public void enter() {
     System.out.println("Not enough number");
   }
   public String getRemainDigits(){
     if(numPad.card.equalsIgnoreCase("debit")){
       return "1";
     }else{
       return "2";
     }
   }
}

public class FourPin implements NumberpadState{
   NumberPad numPad;
   
   public FourPin(NumberPad n) {
     this.numPad = n;
   }
   public void insertDigit() {
      if (numPad.checkCredit()) {
        numPad.setDone(true);
        numPad.setState(numPad.getFivePinState()); 
      }
      else if (numPad.checkDebit()) {
         System.out.println("Press Enter"); 
      }
   }
   public void backspace() {
      numPad.setState(numPad.getThreePinState());
   }
   
   public void enter() {
      if (numPad.checkDebit()) {
          
         numPad.setState(numPad.getNoPinState()); 
         System.out.println("Debit Card Accepted");
      }
      else {
          System.out.println("Enter more digit");
      }
   }
   public String getRemainDigits(){
     if(numPad.card.equalsIgnoreCase("debit")){
       return "0";
     }else{
       return "1";
     }
   }
}

public class FivePin implements NumberpadState{
   NumberPad numPad;
   
   public FivePin(NumberPad n) {
     this.numPad = n;
   }
   public void insertDigit() {
      if (numPad.checkCredit()) {
        System.out.println("Can't insert more digit");
      }
   }
   public void backspace() {
      numPad.setState(numPad.getFourPinState());
   }
   
   public void enter() {
      if (numPad.checkCredit()) {
         numPad.setState(numPad.getNoPinState()); 
         System.out.println("Credit Card Accepted");
      }
   }
   public String getRemainDigits(){
     if(numPad.card.equalsIgnoreCase("debit")){
       return "0";
     }else{
       return "0";
     }
   }
}