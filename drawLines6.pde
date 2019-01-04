void drawLines6() {
  background(250);
  guideLines();
  choosePlace();
  fill(100);
  stroke(0);
  rect(0, 225, 90, 25);
  fill(0, 200, 0);
  textFont(font, 20);
  text("六餐", 20, 245);
  for (int i = 0; i<6; i++) {
    strokeWeight(1);
    stroke(0, 0, 100);
    line(x+i*tab, 600-sixth[i], x+(i+1)*tab, 600-sixth[i+1]);
  }
  
}
