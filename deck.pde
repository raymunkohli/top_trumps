class Deck {
  void setup(){
  }
  void setupdeck(){
    for (int x =0; x!= numberofrows;x++)
    {
      String cardname = table.getString(x,"Name");
      float cardheight = table.getFloat(x,"Height (M)");
      float cardweight = table.getFloat(x,"Weight (KG)");
      float cardlength = table.getFloat(x,"Length (M)");
      float killerRating=table.getFloat(x,"Killer Rating");
      float Int = table.getFloat(x,"Inteligence");
      float Age = table.getFloat(x,"Age (Milion Years)");
      card.setupcard(x,cardname,cardheight,cardweight,cardlength,killerRating,Int,Age);
    }
  }
  void draw(){
  }
  
}