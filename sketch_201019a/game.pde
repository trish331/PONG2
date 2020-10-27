void game () {
  background (0);
  //draw paddles
  circle (leftx, lefty, leftd);
  circle (rightx, righty, rightd);
  //ball
  circle (ballx, bally, balld);
  //pause
  stroke(0);
  fill (255);
  circle (100, 100, 100);

  //moving
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //scoring
  if (ballx <0) {
    rightscore = rightscore + 1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    score.rewind();
    score.play();
  }

  if (ballx > 800) {
    leftscore = leftscore + 1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    score.rewind();
    score.play();
  }

  //bouncing
  if (bally < 50 || bally > height- balld/2) {
    vy = vy * -1;
    wall.rewind();
    wall.play();
  }
  if (dist(leftx, lefty, ballx, bally)<= leftd/2 + balld/2) {
    vx = (ballx - leftx)/30;
    vy = (bally - lefty)/30;
    leftpaddle.rewind();
    leftpaddle.play();
  }
  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    vx = (ballx - rightx)/30;
    vy = (bally - righty)/30;
    rightpaddle.rewind();
    rightpaddle.play();
  }

  //move paddles
  if (AI == true) 
  if (wkey == true && lefty >= leftd/2) lefty = lefty - 5;
  if (skey == true && lefty <= height - (leftd/2)) lefty = lefty + 5;
  if (upkey == true && righty >= rightd/2) righty = righty - 5;
  if (downkey == true && righty <= height - (rightd/2)) righty = righty +5;


  if (AI == false) {
    if (upkey == true && righty >= rightd/2) righty = righty - 5;
    if (downkey == true && righty <= height - (rightd/2)) righty = righty +5;
  } else {
    if (bally > righty) {
      righty = righty + 5;
    } else {
      if (bally < righty) {
        righty = righty -5;
      }
    }
  }
  if (AI == true) 

    //scoreboard
    textSize(50);
  fill(222, 67, 142);
  text(leftscore, width/4, 100);
  fill(44, 203, 21);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer = timer -1;

  if (leftscore == 3) {
    mode = GAMEOVER;
  } else if (rightscore == 3) {
    mode = GAMEOVER;
  }
}



void gameClicks (){
}
