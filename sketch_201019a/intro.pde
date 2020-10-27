void intro () {
  background (0);
  fill (255);
  text ("PONG!", 320, 100);
  textSize (75);
  rect (50, 300, 300, 125);
  fill(0);
  text ("1 player", 50, 375);
  fill (255);
  rect (450, 300, 300, 125);
  fill (0);
  text ("2player", 475, 400);
}
void introClicks () {
  //1 player
  if (mouseX > 50 && mouseX < 350 && mouseY > 300 && mouseY < 425){
  mode = GAME;
  intro.pause();
  intro.rewind();
  AI = true;
  }
  
  
 //2 player
 if (mouseX > 450 && mouseX < 750 && mouseY > 300 && mouseY < 425){
  mode = GAME;
  intro.pause();
  intro.rewind();
  AI = false;
 }
}
