public class GasStation{
  private State availableState;
  private State paymentAuthorizationState;
  private State pickGasState;
  private State refuelState;
  private State printReceiptState;
  private State state;
  
  public GasStation(){
    availableState = new AvailableState(this);
    paymentAuthorizationState = new PaymentAuthorizationState(this);
    pickGasState = new PickGasState(this);
    refuelState = new RefuelState(this);
    printReceiptState = new PrintReceiptState(this);
    
    state = availableState;
  }
  
  public void setState(State st){
    this.state = st;
  }
  public void buttom1(){
    state.buttom1();
  }
  public void buttom2(){
    state.buttom2();
  }
  public void buttom3(){
    state.buttom3();
  }
  public void buttom4(){
    state.buttom4();
  }
  public void gas87(){
    state.gas87();
  }
  public void gas89(){
    state.gas89();
  }
  public void gas91(){
    state.gas91();
  }
  public void refuelStart(){
    state.refuelStart();
  }
  public void refuelStop(){
    state.refuelStop();
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