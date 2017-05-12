// Derrick
public class NumberPad{
  private Boolean done;
  NumberpadState currentstate;
  
  NumberpadState noPin;
  NumberpadState onePin;
  NumberpadState twoPin;
  NumberpadState threePin;
  NumberpadState fourPin;
  NumberpadState fivePin;

  public String card;
  public NumberPad(String cardType) {
    
    this.card = cardType;
      done = false;
      noPin = new NoPin(this);
      onePin = new OnePin(this);
      twoPin = new TwoPin(this);
      threePin = new ThreePin(this);
      fourPin = new FourPin(this);
      fivePin = new FivePin(this);
      
      setState(noPin);
  }
  
  public void setDone(Boolean status){
    done = status;
  }
  
  public Boolean getDone(){
    return done; 
  }
  public Boolean checkDebit() {
    return card.equalsIgnoreCase("debit");
  }
  
  public Boolean checkCredit() {
    return card.equalsIgnoreCase("credit");
  }
  public void insertDigit() {
    currentstate.insertDigit();
  }
  
  public void backSpace() {
    currentstate.backspace();
  }
  public void enter() {
     currentstate.enter(); 
  }
  public void setState(NumberpadState s) {
    this.currentstate = s;
  }
  public NumberpadState getState(){
    return currentstate; 
  }
  public NumberpadState getNoPinState() {
    return noPin;
  }
    public NumberpadState getOnePinState() {
    return onePin;
  }
    public NumberpadState getTwoPinState() {
    return twoPin;
  }
    public NumberpadState getThreePinState() {
    return threePin;
  }
    public NumberpadState getFourPinState() {
    return fourPin;
  }
  
  public NumberpadState getFivePinState() {
    return fivePin;
  }
 
  
}