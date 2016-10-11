class Card{
  void setup(){
  }
  void draw(){
  }
  void addcard(){

  }
  void setupcard(int x, String cardname,float cardheight, float cardweight, float cardlength, float killerrating, float Int, float age){
      storedcards[x][0]=cardheight;
      storedcards[x][1]=cardweight;
      storedcards[x][2]=cardlength;
      storedcards[x][3]= killerrating;
      storedcards[x][4]= Int;
      storedcards[x][5] = age;
      cardnames[x] = cardname;
      
    }
    
    
  }