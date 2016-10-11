Table table;
boolean chosencard = false;
Card card;
Deck deck;
String [] cardnames;
String [] stats ={"Name", "Weight", "Length", "Killer rating", "Int", "Age"};
float [][] storedcards;
int numberofrows, currentcard, card1, card2;
void setup() {
  size(1000, 500);
  currentcard = 0;
  table = loadTable("dinosaurs.csv", "header");
  numberofrows = table.getRowCount();
  deck= new Deck();
  card = new Card();
  storedcards = new float [numberofrows][6];
  cardnames = new String [numberofrows];
  deck.setupdeck();
  printArray(storedcards[0]);
  printArray(cardnames);
}
void draw() {
  background(200, 200, 200);
  if (chosencard) {
    text("Card Name:"+cardnames[card1], 0, 50);
    text("Card Name:"+cardnames[card2], 500, 50);
    for (int x=0; x!=6; x++) {
      text(stats[x], 0, 50+20*(x+1));
      text(storedcards[card1][x], 100, 50+20*(x+1));
    }
    for (int x=0; x!=6; x++) {
      text(stats[x], 500, 50+20*(x+1));
      text(storedcards[card2][x], 600, 50+20*(x+1));
    }
  }
}

void mouseClicked() {
  pickacard();
}
void pickacard() {
  float intcard1 = random(numberofrows);
  float intcard2 = random(numberofrows);
  card1 = int(intcard1);
  card2 = int(intcard2);
  while (card1==card2) {
    intcard2 = random(numberofrows);
    card2 = int(intcard2);
  }
  chosencard= true;
}