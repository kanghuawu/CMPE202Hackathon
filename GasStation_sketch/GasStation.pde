public class GasStation{
  private State availableState;
  private State paymentAuthorizationState;
  private State pickGasState;
  private State refuelState;
  private State printReceiptState;
  private State state;
  private Card card;
  private NumberPad numPad;
  
  public GasStation(){
    availableState = new AvailableState(this);
    paymentAuthorizationState = new PaymentAuthorizationState(this);
    pickGasState = new PickGasState(this);
    refuelState = new RefuelState(this);
    printReceiptState = new PrintReceiptState(this);
    
    state = availableState;
  }
  public void clickButton(String button_name){
    System.out.println("gs: " + button_name);
    switch (button_name.toLowerCase()){
      case "button 1":
        state.buttom1();
        break;
      case "button 2":
        state.buttom2();
        break;
      case "button 3":
        state.buttom3();
        break;
      case "button 4":
        state.buttom4();
        break;
      case "87":
        state.gas87();
        break;
      case "89":
        state.gas89();
        break;
      case "91":
        state.gas91();
        break;
      case "start":
        state.refuelStart();
        break;
      case "stop":
        state.refuelStop();
        break;
    }
  }
  public String getMessage(){
    return state.toString();
  }
 
  
  public State getState() {
     return this.state; 
  }
  public void setState(State st){
    this.state = st;
  }
  
  public State getAvailableState(){
    return availableState;
  }
  public State getPaymentAuthorizationState(){
    return paymentAuthorizationState;
  }
  public State getPickGasState(){
    return pickGasState;
  }
  public State getRefuelState(){
    return refuelState;
  }
  public State getPrintReceiptState(){
    return printReceiptState;
  }
}