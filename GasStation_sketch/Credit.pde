class Credit extends Card {
    //@override
    public void getAuthentication () {
     
      auth = 5;
      cardType = "credit";
      display = "Enter your zip code.";
   }
}