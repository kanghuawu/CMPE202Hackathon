public class stop{
  private State refuelState;
  private State availableState;
  private State state;
  public stop(State currentState){
    this.state = currentState;  
  }
  public void act(){
      if(state==refuelState){
      state.putbackNozzle();
      //state = availableState;
  }else{
    //print some message
    System.out.println("Stop button is not available at this point");
  }
  }
}