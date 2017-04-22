public class GasStation{
  private State availableState;
  private State paymentAuthorizationState;
  private State refuelState;
  private State printReceiptState;
  private State notAvailableState;
  private State state = notAvailableState;
  
  public GasStation(){
    availableState = new AvailableState(this);
    paymentAuthorizationState = new PaymentAuthorizationState(this);
    refuelState = new RefuelState(this);
    printReceiptState = new PrintReceiptState(this);
    notAvailableState = new NotAvailableState(this);
    
    this.state = availableState;
  }
  
  public void setState(State st){
    this.state = st;
  }
}