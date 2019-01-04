void drawLines2() {
  background(250);
  guideLines();
  choosePlace();
  fill(100);
  stroke(0);
  rect(0, 125, 90, 25);
  fill(0, 200, 0);
  textFont(font, 20);
  text("二餐", 20, 145);
  for (int i = 0; i<6; i++) {
    strokeWeight(1);
    stroke(200, 100, 0);
    line(x+i*tab, 600-second[i], x+(i+1)*tab, 600-second[i+1]);
  }
}
