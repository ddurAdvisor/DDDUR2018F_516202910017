void drawLines3() {
  background(250);
  guideLines();
  choosePlace();
  fill(100);
  stroke(0);
  rect(0, 150, 90, 25);
  fill(0, 200, 0);
  textFont(font, 20);
  text("三餐", 20, 170);
  for (int i = 0; i<6; i++) {
    strokeWeight(1);
    stroke(100, 0, 100);
    line(x+i*tab, 600-third[i], x+(i+1)*tab, 600-third[i+1]);
  }
}
