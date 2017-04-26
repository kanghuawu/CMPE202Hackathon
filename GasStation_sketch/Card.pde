/*
  example:
  GetCardFactory card = new GetCardFactory();
  Card c = card.getCard("debit");
  c.getAuthentication();
  c.inputAuth();
*/

abstract class Card {
  protected int auth;
  protected String display;
  protected String cardType;
  abstract void getAuthentication();
  
  
 public void inputAuth() {
   //ejectCard() card state;
    System.out.println(display);
    
    System.out.println("This is a " + cardType);
    
    NumberPad numPad = new NumberPad(cardType);
    for(int i =0; i < auth; i++ ){
      numPad.insertDigit();
    } 
    numPad.enter();
 }
}