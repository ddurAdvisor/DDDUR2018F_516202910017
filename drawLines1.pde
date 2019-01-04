void drawLines1() {
  background(250);
  guideLines();
  choosePlace();
  fill(100);
  stroke(0);
  rect(0, 100, 90, 25);
  fill(0, 200, 0);
  textFont(font, 20);
  text("一餐", 20, 120);
  for (int i = 0; i<6; i++) {
    strokeWeight(1);
    stroke(200, 0, 0);
    line(x+i*tab, 600-first[i], x+(i+1)*tab, 600-first[i+1]);
  }
}
