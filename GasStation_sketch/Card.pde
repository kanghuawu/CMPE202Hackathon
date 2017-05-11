/*
  example:
  GetCardFactory card = new GetCardFactory();
  Card c = card.getCard("debit");
  c.getAuthentication();
  c.inputAuth();
*/
class GetCardFactory {
  public Card getCard(String type) {
    if (type == null) {
       return null; 
    } else if (type.equalsIgnoreCase("debit")){
        //insertCard() state
        return new Debit();
    } else if (type.equalsIgnoreCase("credit")){
      //insertCard() state
       return new Credit(); 
    }
    return null;
  }
}


abstract class Card {
  public String display;
  protected int auth;
  protected String cardType;
  abstract void getAuthentication();
  
  
 public void inputAuth() {
   //ejectCard() card state;
    System.out.println("display: "+display);
    
    System.out.println("This is a " + cardType);
    
    NumberPad numPad = new NumberPad(cardType);
    for(int i =0; i < auth; i++ ){
      numPad.insertDigit();
    } 
    numPad.enter();
 }
 public String getDisplay(){
   return display;
 }
 public String getCardType(){
   return cardType;
 }
 public int getAuthNumber() {
   return auth; 
 }
}


class Credit extends Card {
    //@override
    public void getAuthentication () {
      auth = 5;
      cardType = "credit";
      display = "Enter your zip code.";
   }
}


class Debit extends Card {
   public void getAuthentication () {
      auth = 4;
      cardType = "debit";
      display = "Enter your Pin number";
   }
}