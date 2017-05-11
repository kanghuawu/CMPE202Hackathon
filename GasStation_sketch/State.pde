
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
    State nxtstate = gs.getPaymentAuthorizationState();
    gs.setState(nxtstate);
    ((PaymentAuthorizationState) nxtstate).setCard("debit");
  }
  public void buttom2(){
    State nxtstate = gs.getPaymentAuthorizationState();
    gs.setState(nxtstate);
    ((PaymentAuthorizationState) nxtstate).setCard("credit");
  }
  public void buttom3(){}
  public void buttom4(){}
  public void gas87(){}
  public void gas89(){}
  public void gas91(){}
  public void refuelStart(){}
  public void refuelStop(){}
  public String toString(){
    return "Welcome! 202 Gas Station.\nPlease press Button 1 for debit or Button 2 for credit card";
  }
}

public class PaymentAuthorizationState implements State{
  GasStation gs;
  String card;
  
  public PaymentAuthorizationState(GasStation GS){
    this.gs = GS;
    
  }
  public void setCard(String card){
    this.card = card;
    GetCardFactory type = new GetCardFactory();
    gs.card = type.getCard(card);
    gs.card.getAuthentication();
    gs.numPad = new NumberPad(gs.card.getCardType());
    
    
  }
  public void buttom3(){
  }
  public void buttom4(){
  }
  public String toString(){
    if(!gs.numPad.getDone())
      return "You've selected " + this.card + "card.\n" + "Please proceed to the pinpad\n"+gs.card.display;
    else
      return "Please press enter";
  }
  
  
  public void buttom1(){}
  public void buttom2(){}
  public void gas87(){}
  public void gas89(){}
  public void gas91(){}
  public void refuelStart(){}
  public void refuelStop(){}
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
    System.out.println("starting....");
    hasStarted = true;
  }
  public void refuelStop(){
    System.out.println("stopping....");
    gs.setState(gs.getPrintReceiptState());
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
  
  public void buttom1(){
    gs.setState(gs.getAvailableState());
    System.out.println("Printing receipt...");
    delay(2000);
  }
  public void buttom2(){
    gs.setState(gs.getAvailableState());
    System.out.println("Returning to available state");
  }
  public void buttom3(){}
  public void buttom4(){}
  public void gas87(){}
  public void gas89(){}
  public void gas91(){}
  public void refuelStart(){}
  public void refuelStop(){}
  public String toString(){
    return "Do you want to print your receipt?\nSelect Button 1 for Yes Button 2 for No";
  }
}