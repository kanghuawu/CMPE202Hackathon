
public interface State {
  
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
    System.out.println("A Card Inserted");
  }
  public void ejectCard(){
    System.out.println("No card to eject");
  }
  public void takeNozzle(){
    System.out.println("Need to insert your card first");
  }
  public void refuelCar(){
    System.out.println("Need to insert your card first");
  }
  public void putbackNozzle(){
    System.out.println("Need to insert your card first");
  }
  public void takeReceipt(){
    System.out.println("Need to insert your card first");
  }
  public String toString(){
    return "Avaiable to use. Please insert your credit/debit card";
  }
}

public class PaymentAuthorizationState implements State{
  GasStation gs;
  
  public PaymentAuthorizationState(GasStation GS){
    this.gs = GS;
  }
  
  public void insertCard(){
    System.out.println("Can not insert another card");
  }
  public void ejectCard(){
    System.out.println("Ejecting your card");
  }
  public void takeNozzle(){
    System.out.println("Please wait for authorization");
  }
  public void refuelCar(){
    System.out.println("Please wait for authorization");
  }
  public void putbackNozzle(){
    System.out.println("Please wait for authorization");
  }
  public void takeReceipt(){
    System.out.println("Please wait for authorization");
  }
  public String toString(){
    return "Processing your card authorization";
  }
}

public class RefuelState implements State{
  GasStation gs;
  
  public RefuelState(GasStation GS){
    this.gs = GS;
  }
  
  public void insertCard(){
    System.out.println();
  }
  public void ejectCard(){
    System.out.println();
  }
  public void takeNozzle(){
    System.out.println("Taking nozzle");
    try{
      Thread.sleep(2000);
    }catch(InterruptedException e){
        System.out.println("got interrupted!");
    }
  }
  public void refuelCar(){
    System.out.println("Start refueling your car");
  }
  public void putbackNozzle(){
    System.out.println("Putting back nozzle");
    try{
      Thread.sleep(2000);
    }catch(InterruptedException e){
        System.out.println("got interrupted!");
    }
  }
  public void takeReceipt(){
    System.out.println();
  }
  public String toString(){
    return "Start refueling your car";
  }
}

public class PrintReceiptState implements State{
  GasStation gs;
  
  public PrintReceiptState(GasStation GS){
    this.gs = GS;
  }
  
  public void insertCard(){
    System.out.println();
  }
  public void ejectCard(){
    System.out.println();
  }
  public void takeNozzle(){
    System.out.println();
  }
  public void refuelCar(){
    System.out.println();
  }
  public void putbackNozzle(){
    System.out.println();
  }
  public void takeReceipt(){
    System.out.println("Thank for coming");
    try{
      Thread.sleep(3000);
    }catch(InterruptedException e){
        System.out.println("got interrupted!");
    }
    gs;
  }
  public String toString(){
    return "Please take your receipt. Thanks for coming.";
  }
}