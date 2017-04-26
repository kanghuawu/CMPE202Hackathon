class GetCardFactory {
  public Card getCard(String type) 
  {
    if (type == null) {
       return null; 
    }
    else if (type.equalsIgnoreCase("debit")){
        //insertCard() state
        return new Debit();
    }
    else if (type.equalsIgnoreCase("credit")){
      //insertCard() state
       return new Credit(); 
    }
    return null;
  }
}