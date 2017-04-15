
public interface State{
  public void insertCard();
  public void ejectCard();
  public void takeNozzle();
  public void refuelCar();
  public void putbackNozzle();
  public void takeReceipt();
}

public class AvailableState implements State{
  GasStation gs;
  
  public AvailableState(GasStation GS){
    this.gs = GS;
  }
  
  public void insertCard(){
    
  }
  public void ejectCard();
  public void takeNozzle();
  public void refuelCar();
  public void putbackNozzle();
  public void takeReceipt();
  public String toString();
}

public class PaymentAuthorizationState implements State{
  GasStation gs;
  
  public PaymentAuthorizationState(GasStation GS){
    this.gs = GS;
  }
  
  public void insertCard();
  public void ejectCard();
  public void takeNozzle();
  public void refuelCar();
  public void putbackNozzle();
  public void takeReceipt();
  public String toString();
}

public class RefuelState implements State{
  GasStation gs;
  
  public RefuelState(GasStation GS){
    this.gs = GS;
  }
  
  public void insertCard();
  public void ejectCard();
  public void takeNozzle();
  public void refuelCar();
  public void putbackNozzle();
  public void takeReceipt();
  public String toString();
}

public class PrintReceiptState implements State{
  GasStation gs;
  
  public PrintReceiptState(GasStation GS){
    this.gs = GS;
  }
  
  public void insertCard();
  public void ejectCard();
  public void takeNozzle();
  public void refuelCar();
  public void putbackNozzle();
  public void takeReceipt();
  public String toString();
}

public class NotAvailableState implements State{
  GasStation gs;
  
  public NotAvailableState(GasStation GS){
    this.gs = GS;
  }
  
  public void insertCard();
  public void ejectCard();
  public void takeNozzle();
  public void refuelCar();
  public void putbackNozzle();
  public void takeReceipt();
  public String toString();
}