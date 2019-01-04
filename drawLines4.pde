void drawLines4() {
  background(250);
  guideLines();
  choosePlace();
  fill(100);
  stroke(0);
  rect(0, 175, 90, 25);
  fill(0, 200, 0);
  textFont(font, 20);
  text("四餐", 20, 195);
  for (int i = 0; i<6; i++) {
    strokeWeight(1);
    stroke(0, 100, 100);
    line(x+i*tab, 600-fourth[i], x+(i+1)*tab, 600-fourth[i+1]);
  }
}
