public class GasStation{
  private State availableState;
  private State paymentAuthorizationState;
  private State pickGasState;
  private State refuelState;
  private State printReceiptState;
  private State state;
  public Card card;
  public NumberPad numPad;
  
  public GasStation(){
    availableState = new AvailableState(this);
    paymentAuthorizationState = new PaymentAuthorizationState(this);
    pickGasState = new PickGasState(this);
    refuelState = new RefuelState(this);
    printReceiptState = new PrintReceiptState(this);
    
    state = availableState;
  }
  public void clickButton(String button_name){
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
      case "button 87":
        state.gas87();
        break;
      case "button 89":
        state.gas89();
        break;
      case "button 91":
        state.gas91();
        break;
      case "button Start":
        state.refuelStart();
        break;
      case "button Stop":
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
    return paymentAuthorizationState;
  }
  public State getPrintReceiptState(){
    return printReceiptState;
  }
}