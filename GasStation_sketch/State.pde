
public interface State {
  public void buttom1();
  public void buttom2();
  public void buttom3();
  public void buttom4();
  public void gas87();
  public void gas89();
  public void gas91();
  public void refuelStart();
  public void refuelStop();
  public String toString();
}

public class AvailableState implements State{
  GasStation gs;
  
  public AvailableState(GasStation GS){
    this.gs = GS;
  }
  public void buttom1(){
    System.out.println("You seleceted a debit card");
    gs.setState(gs.getPaymentAuthorizationState());
  }
  public void buttom2(){
    System.out.println("You seleceted a credit card");
    gs.setState(gs.getPaymentAuthorizationState());
  }
  public void buttom3(){}
  public void buttom4(){}
  public void gas87(){}
  public void gas89(){}
  public void gas91(){}
  public void refuelStart(){}
  public void refuelStop(){}
  public String toString(){
    return "Please insert a debit or credit card";
  }
}

public class PaymentAuthorizationState implements State{
  GasStation gs;
  
  public PaymentAuthorizationState(GasStation GS){
    this.gs = GS;
  }
  
  public void buttom1(){
    System.out.println("Please proceed to the pinpad");
  }
  public void buttom2(){
    System.out.println("Please proceed to the pinpad");
  }
  public void buttom3(){
    
    gs.setState(gs.getPickGasState());
  }
  public void buttom4(){
    System.out.println("Canceling your order. See you next time");
    gs.setState(gs.getAvailableState());
  }
  public void gas87(){}
  public void gas89(){}
  public void gas91(){}
  public void refuelStart(){}
  public void refuelStop(){}
  public String toString(){
    return "Please proceed to the pinpad";
  }
}

public class PickGasState implements State{
  GasStation gs;
  
  public PickGasState(GasStation GS){
    this.gs = GS;
  }
  
  public void buttom1(){}
  public void buttom2(){}
  public void buttom3(){}
  public void buttom4(){}
  public void gas87(){
    System.out.println("You pick gasoline 87");
    gs.setState(gs.getRefuelState());
  }
  public void gas89(){
    System.out.println("You pick gasoline 89");
    gs.setState(gs.getRefuelState());
  }
  public void gas91(){
    System.out.println("You pick gasoline 91");
    gs.setState(gs.getRefuelState());
  }
  public void refuelStart(){}
  public void refuelStop(){}
  public String toString(){
    return "Please select a gasoline type";
  }
}


public class RefuelState implements State{
  GasStation gs;
  boolean hasStarted = false;
  public RefuelState(GasStation GS){
    this.gs = GS;
  }
  
  public void buttom1(){}
  public void buttom2(){}
  public void buttom3(){}
  public void buttom4(){}
  public void gas87(){}
  public void gas89(){}
  public void gas91(){}
  public void refuelStart(){
    hasStarted = true;
  }
  public void refuelStop(){
    if(hasStarted){
      gs.setState(gs.getPrintReceiptState());
    }
  }
  public String toString(){
    return "Take the Nozzle and refuel your car.";
  }
}

public class PrintReceiptState implements State{
  GasStation gs;
  
  public PrintReceiptState(GasStation GS){
    this.gs = GS;
  }
  
  public void buttom1(){}
  public void buttom2(){}
  public void buttom3(){}
  public void buttom4(){}
  public void gas87(){}
  public void gas89(){}
  public void gas91(){}
  public void refuelStart(){}
  public void refuelStop(){}
  public String toString(){
    return "Printing your receipt";
  }
}